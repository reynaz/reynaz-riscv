#!/bin/bash
# stream_tur.sh - STREAM'i dizi boyutu x thread sayisi x cluster yerlesimiyle
# olcer; STREAM'in kendi ciktisi (Array size, Best Rate, Avg/Min/Max time)
# her olcumun .csv dosyasina kaydedilir. KARTTA calistir:
#   cd ~/reynaz-riscv && ./scripts/stream_tur.sh
# On kosul: stream.c dosyasi src/stream.c olarak burada olmali.
# Sure ~4-5 dk. En buyuk boyut (60M eleman) ~1.34 GiB bellek kullanir.
set -e
cd ~/reynaz-riscv
echo "bos bellek: $(awk '/MemAvailable/{print int($2/1024)}' /proc/meminfo) MB (en az 2000 MB olmali)"
uptime
R=./scripts/run_exp.sh
[ -f src/stream.c ] || { echo "src/stream.c yok: once stream.c'yi buraya kopyala"; exit 1; }
mkdir -p bin
SIZES="2000000 10000000 40000000 60000000"   # dizi basina 15, 76, 305, 458 MiB (x3 dizi)

for S in $SIZES; do
  gcc -O3 -march=rv64gcv -fopenmp -DSTREAM_ARRAY_SIZE=$S -DNTIMES=20 src/stream.c -o bin/stream_$S
done

echo "== 1) Dizi boyutu x thread sayisi (spread)"
for S in $SIZES; do
  for T in 1 2 4 8; do
    OMP_NUM_THREADS=$T $R stream_${S}_${T}t ./bin/stream_$S
  done
done

echo "== 1b) 10M eleman, ara thread sayilari (3,5,6,7)"
for T in 3 5 6 7; do
  OMP_NUM_THREADS=$T $R stream_10000000_${T}t ./bin/stream_10000000
done

echo "== 2) Cluster yerlesimi, 10M eleman (STREAM varsayilani)"
OMP_NUM_THREADS=2 OMP_PLACES="{0},{1}"         $R stream_10M_2t_ayni   ./bin/stream_10000000
OMP_NUM_THREADS=2 OMP_PLACES="{0},{4}"         $R stream_10M_2t_farkli ./bin/stream_10000000
OMP_NUM_THREADS=4 OMP_PLACES="{0},{1},{2},{3}" $R stream_10M_4t_ayni   ./bin/stream_10000000
OMP_NUM_THREADS=4 OMP_PLACES="{0},{1},{4},{5}" $R stream_10M_4t_2arti2 ./bin/stream_10000000
echo "== bitti"
