#!/bin/bash
# olcum_gate_sweep_teshis.sh - gate_sweep v4 ile teshis olcumleri (2 Kasim
# hoca gorusmesindeki sorular icin). KARTTA calistir:
#   cd ~/reynaz-riscv && ./scripts/olcum_gate_sweep_teshis.sh
# Toplam ~8 dakika. Bittiginde Mac'te sonuclari cek (scp -r ... results/).
set -e
cd ~/reynaz-riscv
R=./scripts/run_exp.sh
D=results/$(date +%F); mkdir -p bin "$D"
INFO="$D/derleme_$(date +%H%M%S).txt"

echo "== 0) Derleme + derlenmis kodun kontrolu"
gcc -O3 -march=rv64gcv -fopenmp src/gate_sweep.c -o bin/gate_sweep
objdump -d bin/gate_sweep > "$D/gate_sweep.asm"
{
  echo "komut: gcc -O3 -march=rv64gcv -fopenmp src/gate_sweep.c -o bin/gate_sweep"
  gcc --version | head -1
  echo "nproc: $(nproc)"
  echo "perf_event_paranoid: $(cat /proc/sys/kernel/perf_event_paranoid)"
  echo "prefetch iceren satir: $(grep -ci prefetch "$D/gate_sweep.asm" || true)"
  echo "vsetvli iceren satir: $(grep -c vsetvli "$D/gate_sweep.asm" || true)"
  echo "omp fonksiyonlari:"; grep '_omp_fn' "$D/gate_sweep.asm" | grep '>:' || true
} | tee "$INFO"

echo "== 1) Kontrol: v4 eski hizda mi? (q=0 ~157 ms olmali)"
T0=$(OMP_NUM_THREADS=1 OMP_PLACES="{0}" OMP_PROC_BIND=true ./bin/gate_sweep 24 1 2>/dev/null | awk -F, 'NR==2{print $4}')
echo "q=0: $T0 ms"
if awk "BEGIN{exit !($T0 > 200)}"; then echo "DUR: v4 yavas, olcumleri calistirma, Claude'a yaz"; exit 1; fi

echo "== 2) Donanim sayaclari, 1 thread, cekirdek 0"
GS_HWCNT=1 OMP_NUM_THREADS=1 OMP_PLACES="{0}" $R v4_hw_1t ./bin/gate_sweep 24 5

echo "== 3) Siralama degisikligi: her tekrarda butun qubit'ler bastan sona"
OMP_NUM_THREADS=1 OMP_PLACES="{0}" $R v4_rorder_1t ./bin/gate_sweep 24 5 r

echo "== 4) Thread sayisi taramasi 1..8 (spread)"
for T in 1 2 3 4 5 6 7 8; do
  OMP_NUM_THREADS=$T $R v4_spread_${T}t ./bin/gate_sweep 24 5
done

echo "== 5) 8 thread, baglama YOK (isletim sistemi tasiyabilsin)"
OMP_NUM_THREADS=8 OMP_PROC_BIND=false $R v4_unbound_8t ./bin/gate_sweep 24 5

echo "== 6) Dizi boyutu: 4 ve 8 thread, n = 20, 22, 26 (24 zaten adim 4'te)"
for n in 20 22 26; do
  for T in 4 8; do
    OMP_NUM_THREADS=$T $R v4_n${n}_${T}t ./bin/gate_sweep $n 5
  done
done
echo "== 7) Veri cache'te mi RAM'de mi: 1 thread, cekirdek 0"
#   n=11: 16 KB (32 KB'lik L1'e rahat sigar), n=15: 256 KB (512 KB'lik L2'ye
#   rahat sigar), n=24: 128 MiB (RAM; adim 4'te var). Cift basina sureyi karsilastir.
for n in 11 15; do
  OMP_NUM_THREADS=1 OMP_PLACES="{0}" $R v4_n${n}_1t ./bin/gate_sweep $n 50
done
echo "== bitti: $D"
