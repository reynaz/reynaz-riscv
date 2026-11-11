// gate_sweep.c - Ayni tek-qubit kapisini (Rx) 0'dan n-1'e kadar her qubit'e
// uygular ve sureyi olcer. Qubit indeksine gore bellek davranisini gosterir.
//
// v4 (2 Kasim, hocanin sorulari icin olcum eklendi; KERNEL v3 ILE AYNI):
//   - Her olcumde thread basina sure (en hizli / en yavas thread)
//   - Her olcumde page fault ve context switch sayilari (getrusage)
//   - Her olcumde thread'lerin calistigi cekirdek, olcum sirasinda goc (migration)
//   - Istege bagli donanim sayaclari: GS_HWCNT=1 (perf_event_open, sadece
//     1 thread'de anlamli; perf araci kurulu olmasa da calisir)
//   - Istege bagli siralama: 3. arguman 'r' ise once tekrar, sonra qubit
//     (her tekrarda 0..n-1 butun qubit'ler bastan sona bir kez gezilir)
//
// Derleme (kartta):  gcc -O3 -march=rv64gcv -fopenmp src/gate_sweep.c -o bin/gate_sweep
// Calistirma:        OMP_NUM_THREADS=1 ./bin/gate_sweep 24 10 [q|r]
// Argumanlar:        <qubit sayisi> <tekrar> [siralama]  (fp32 complex: 2^n * 8 byte)

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <omp.h>
#include <sched.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/resource.h>
#include <sys/syscall.h>
#include <linux/perf_event.h>

#define MAXT 64

// ---------------- donanim sayaclari ----------------
#define CEV(id, op, res) ((unsigned long long)(id) | ((op) << 8) | ((res) << 16))
typedef struct { const char *name; unsigned type; unsigned long long config; int fd; } hwc_t;
static hwc_t hw[] = {
    {"cycles",       PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES, -1},
    {"instr",        PERF_TYPE_HARDWARE, PERF_COUNT_HW_INSTRUCTIONS, -1},
    {"cache_ref",    PERF_TYPE_HARDWARE, PERF_COUNT_HW_CACHE_REFERENCES, -1},
    {"cache_miss",   PERF_TYPE_HARDWARE, PERF_COUNT_HW_CACHE_MISSES, -1},
    {"l1d_rd_acc",   PERF_TYPE_HW_CACHE, CEV(PERF_COUNT_HW_CACHE_L1D,  PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_ACCESS), -1},
    {"l1d_rd_miss",  PERF_TYPE_HW_CACHE, CEV(PERF_COUNT_HW_CACHE_L1D,  PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_MISS), -1},
    {"ll_rd_miss",   PERF_TYPE_HW_CACHE, CEV(PERF_COUNT_HW_CACHE_LL,   PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_MISS), -1},
    {"dtlb_rd_miss", PERF_TYPE_HW_CACHE, CEV(PERF_COUNT_HW_CACHE_DTLB, PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_MISS), -1},
};
#define NHW ((int)(sizeof hw / sizeof hw[0]))

static void hw_open(void) {
    for (int e = 0; e < NHW; e++) {
        struct perf_event_attr a;
        memset(&a, 0, sizeof a);
        a.size = sizeof a;
        a.type = hw[e].type;
        a.config = hw[e].config;
        a.disabled = 1;
        a.exclude_kernel = 1;   // perf_event_paranoid=2 iken sadece kullanici alani sayilabilir
        a.exclude_hv = 1;
        hw[e].fd = (int)syscall(SYS_perf_event_open, &a, 0, -1, -1, 0); // bu thread, her cekirdekte
        fprintf(stderr, "sayac %-13s: %s\n", hw[e].name,
                hw[e].fd >= 0 ? "acildi" : strerror(errno));
    }
}
static void hw_start(void) {
    for (int e = 0; e < NHW; e++) if (hw[e].fd >= 0) {
        ioctl(hw[e].fd, PERF_EVENT_IOC_RESET, 0);
        ioctl(hw[e].fd, PERF_EVENT_IOC_ENABLE, 0);
    }
}
static void hw_stop(long long *v) {
    for (int e = 0; e < NHW; e++) {
        v[e] = -1;
        if (hw[e].fd >= 0) {
            ioctl(hw[e].fd, PERF_EVENT_IOC_DISABLE, 0);
            if (read(hw[e].fd, &v[e], sizeof v[e]) != sizeof v[e]) v[e] = -1;
        }
    }
}

int main(int argc, char **argv) {
    int n    = argc > 1 ? atoi(argv[1]) : 24;
    int reps = argc > 2 ? atoi(argv[2]) : 10;
    int order_rep = argc > 3 && argv[3][0] == 'r';
    int use_hw = getenv("GS_HWCNT") && atoi(getenv("GS_HWCNT"));
    size_t N = (size_t)1 << n;
    int T = omp_get_max_threads();
    if (T > MAXT) { fprintf(stderr, "en fazla %d thread\n", MAXT); return 1; }

    struct rusage ru0, ru1;
    getrusage(RUSAGE_SELF, &ru0);

    // AoS duzen: [re0, im0, re1, im1, ...], 64 byte hizali
    float *psi = aligned_alloc(64, N * 2 * sizeof(float));
    if (!psi) { fprintf(stderr, "bellek ayrilamadi\n"); return 1; }

    // Ilk dokunma: sayfalar burada fiziksel bellege baglanir (page fault burada olur)
    #pragma omp parallel for schedule(static)
    for (size_t i = 0; i < N; i++) { psi[2*i] = 1e-3f; psi[2*i+1] = 0.0f; }

    getrusage(RUSAGE_SELF, &ru1);
    fprintf(stderr, "n=%d qubit, %.1f MB, %d thread, %d tekrar, siralama=%s\n",
            n, N * 8.0 / 1048576.0, T, reps, order_rep ? "tekrar-once" : "qubit-once");
    fprintf(stderr, "ilk dokunma: %ld minor, %ld major page fault (4 KB sayfayla beklenen ~%zu)\n",
            ru1.ru_minflt - ru0.ru_minflt, ru1.ru_majflt - ru0.ru_majflt, N * 8 / 4096);
    fprintf(stderr, "derleyici: gcc %s\n", __VERSION__);

    if (use_hw) {
        if (T > 1) fprintf(stderr, "UYARI: donanim sayaclari sadece ana thread'i sayar\n");
        hw_open();
    }

    // Rx(theta): [[c, -i s], [-i s, c]], c=0.8, s=0.6 (unitary, degerler buyumez)
    const float ur[4] = {0.8f, 0.0f, 0.0f, 0.8f};
    const float ui[4] = {0.0f, -0.6f, -0.6f, 0.0f};

    printf("qubit,stride_bytes,rep,time_ms,GBps,tmin_ms,tmax_ms,minflt,majflt,nvcsw,nivcsw,migr,cpus");
    if (use_hw) for (int e = 0; e < NHW; e++) printf(",%s", hw[e].name);
    printf("\n");

    double bytes = 2.0 * N * 8.0;  // tum vektor okunur + yazilir
    double tt[MAXT]; int c0[MAXT], c1[MAXT];
    long long hv[NHW];

    int total = n * (reps + 1);
    for (int it = 0; it < total; it++) {
        int q, r;
        if (!order_rep) { q = it / (reps + 1); r = it % (reps + 1) - 1; }
        else            { r = it / n - 1;      q = it % n; }
        size_t s = (size_t)1 << q;          // r = -1: isinma, yazdirilmaz

        getrusage(RUSAGE_SELF, &ru0);
        if (use_hw) hw_start();
        double t0 = omp_get_wtime();
        #pragma omp parallel
        {
            int tid = omp_get_thread_num();
            c0[tid] = sched_getcpu();
            double ts = omp_get_wtime();
            #pragma omp for schedule(static) nowait
            for (size_t k = 0; k < N / 2; k++) {
                size_t i = ((k >> q) << (q + 1)) | (k & (s - 1)); // q. biti 0
                size_t j = i | s;                                  // q. biti 1
                float ar = psi[2*i], ai = psi[2*i+1];
                float br = psi[2*j], bi = psi[2*j+1];
                psi[2*i]   = ur[0]*ar - ui[0]*ai + ur[1]*br - ui[1]*bi;
                psi[2*i+1] = ur[0]*ai + ui[0]*ar + ur[1]*bi + ui[1]*br;
                psi[2*j]   = ur[2]*ar - ui[2]*ai + ur[3]*br - ui[3]*bi;
                psi[2*j+1] = ur[2]*ai + ui[2]*ar + ur[3]*bi + ui[3]*br;
            }
            tt[tid] = omp_get_wtime() - ts;
            c1[tid] = sched_getcpu();
        }
        double t = omp_get_wtime() - t0;
        if (use_hw) hw_stop(hv);
        getrusage(RUSAGE_SELF, &ru1);

        if (r < 0) continue;
        double tmin = tt[0], tmax = tt[0];
        int migr = 0;
        for (int x = 0; x < T; x++) {
            if (tt[x] < tmin) tmin = tt[x];
            if (tt[x] > tmax) tmax = tt[x];
            if (c0[x] != c1[x]) migr++;
        }
        printf("%d,%zu,%d,%.3f,%.3f,%.3f,%.3f,%ld,%ld,%ld,%ld,%d,",
               q, s * 8, r, t * 1e3, bytes / t / 1e9, tmin * 1e3, tmax * 1e3,
               ru1.ru_minflt - ru0.ru_minflt, ru1.ru_majflt - ru0.ru_majflt,
               ru1.ru_nvcsw - ru0.ru_nvcsw, ru1.ru_nivcsw - ru0.ru_nivcsw, migr);
        for (int x = 0; x < T; x++) printf(x ? "|%d" : "%d", c1[x]);
        if (use_hw) for (int e = 0; e < NHW; e++) printf(",%lld", hv[e]);
        printf("\n");
        fflush(stdout);
    }
    free(psi);
    return 0;
}
