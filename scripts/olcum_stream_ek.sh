#!/bin/bash
# olcum_stream_ek.sh - STREAM ek olcumleri (11 Kasim turunun takibi). KARTTA calistir:
#   cd ~/reynaz-riscv && ./scripts/olcum_stream_ek.sh
# 1) 40M anomalisi: OFFSET=0 tekrar + OFFSET=128 (diziler arasina 1 KB bosluk)
# 2) 60M, 2 thread Add anomalisinin tekrari
# 3) 6 thread: spread (2+4, dengesiz) ve elle dengeli (3+3) yerlesim
# Bellek yerlesimi: her programdaki a, b, c dizilerinin adresi ve aralarindaki
# uzakligin 4096'ya bolumunden kalan yerlesim_<saat>.txt'ye yazilir.
# Sure ~2-3 dk. On kosul: bin/stream_* programlari stream_tur.sh ile derlenmis olmali.
set -e
cd ~/reynaz-riscv
R=./scripts/run_exp.sh
D=results/$(date +%F); mkdir -p "$D"
uptime

gcc -O3 -march=rv64gcv -fopenmp -DSTREAM_ARRAY_SIZE=40000000 -DNTIMES=20 -DOFFSET=128 \
    src/stream.c -o bin/stream_40000000_off128

echo "== Dizilerin bellekteki yeri"
LAY="$D/yerlesim_$(date +%H%M%S).txt"
for P in stream_10000000 stream_40000000 stream_40000000_off128 stream_60000000; do
  echo "--- $P"
  nm bin/$P | awk '$3=="a"||$3=="b"||$3=="c"{print $3, $1}' | sort -k2 | while read n h; do
    v=$((16#$h)); echo "$n adres=0x$h  adres%4096=$((v % 4096))"
  done
done | tee "$LAY"

echo "== 1) 40M anomalisi"
OMP_NUM_THREADS=1 $R stream_40M_1t_tekrar  ./bin/stream_40000000
OMP_NUM_THREADS=1 $R stream_40M_1t_off128  ./bin/stream_40000000_off128
OMP_NUM_THREADS=8 $R stream_40M_8t_tekrar  ./bin/stream_40000000
OMP_NUM_THREADS=8 $R stream_40M_8t_off128  ./bin/stream_40000000_off128

echo "== 2) 60M, 2 thread tekrar"
OMP_NUM_THREADS=2 $R stream_60M_2t_tekrar  ./bin/stream_60000000

echo "== 3) 6 thread yerlesimi, 10M"
OMP_NUM_THREADS=6 $R stream_10M_6t_spread_2arti4 ./bin/stream_10000000
OMP_NUM_THREADS=6 OMP_PLACES="{0},{1},{2},{4},{5},{6}" $R stream_10M_6t_dengeli_3arti3 ./bin/stream_10000000
echo "== bitti: $D"
