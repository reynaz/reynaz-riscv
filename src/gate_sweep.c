// gate_sweep.c - Ayni tek-qubit kapisini (Rx) 0'dan n-1'e kadar her qubit'e
// uygular ve sureyi olcer. Qubit indeksine gore bellek davranisini gosterir.
//
// v2: Her tekrarin suresi ayri satir olarak yazilir (medyan/sapma sonradan
//     hesaplanir). Her qubit icin olculmeyen bir isinma turu var.
//
// Derleme (kartta):  gcc -O3 -march=rv64gcv -fopenmp gate_sweep.c -o gate_sweep
// Calistirma:        OMP_NUM_THREADS=1 ./gate_sweep 24 10 > sweep_1t.csv
// Argumanlar:        <qubit sayisi> <tekrar>   (fp32 complex: 2^n * 8 byte bellek)
// Cikti (CSV):       qubit,stride_bytes,rep,time_ms,GBps

#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

// Kapiyi q. qubit'e bir kez uygular.
static void apply_rx(float *psi, size_t N, int q,
                     const float ur[4], const float ui[4]) {
    size_t s = (size_t)1 << q;
    #pragma omp parallel for schedule(static)
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
}

int main(int argc, char **argv) {
    int n    = argc > 1 ? atoi(argv[1]) : 24;
    int reps = argc > 2 ? atoi(argv[2]) : 10;
    size_t N = (size_t)1 << n;

    // AoS duzen: [re0, im0, re1, im1, ...], 64 byte hizali
    float *psi = aligned_alloc(64, N * 2 * sizeof(float));
    if (!psi) { fprintf(stderr, "bellek ayrilamadi\n"); return 1; }

    // Paralel ilk dokunma: sayfalar ayni thread duzeniyle olusur
    #pragma omp parallel for schedule(static)
    for (size_t i = 0; i < N; i++) { psi[2*i] = 1e-3f; psi[2*i+1] = 0.0f; }

    // Rx(theta): [[c, -i s], [-i s, c]], c=0.8, s=0.6 (unitary, degerler buyumez)
    const float ur[4] = {0.8f, 0.0f, 0.0f, 0.8f};
    const float ui[4] = {0.0f, -0.6f, -0.6f, 0.0f};

    fprintf(stderr, "n=%d qubit, %.1f MB, %d thread, %d tekrar\n",
            n, N * 8.0 / 1048576.0, omp_get_max_threads(), reps);
    printf("qubit,stride_bytes,rep,time_ms,GBps\n");

    double bytes = 2.0 * N * 8.0;  // tum vektor okunur + yazilir

    for (int q = 0; q < n; q++) {
        apply_rx(psi, N, q, ur, ui);           // isinma turu (olculmez)
        for (int r = 0; r < reps; r++) {
            double t0 = omp_get_wtime();
            apply_rx(psi, N, q, ur, ui);
            double t = omp_get_wtime() - t0;
            printf("%d,%zu,%d,%.3f,%.3f\n",
                   q, ((size_t)1 << q) * 8, r, t * 1e3, bytes / t / 1e9);
        }
        fflush(stdout);
    }
    free(psi);
    return 0;
}
