#!/bin/bash
# run_exp.sh - Her olcumu sistem durumuyla birlikte kaydeder (paylasimli kart icin).
#
# Kullanim:  ./run_exp.sh <deney_adi> <komut ve argumanlari>
# Ornek:     OMP_NUM_THREADS=2 ./run_exp.sh sweep_2t ./bin/gate_sweep 24 10
#
# Cikti: ~/reynaz-riscv/results/<tarih>/<deney_adi>_<saat>.{csv,meta,log}
#   .csv  -> programin stdout'u (olcum sonuclari)
#   .meta -> olcum anindaki sistem durumu (yuk, kullanicilar, frekans, sicaklik...)
#   .log  -> stderr (OMP_DISPLAY_AFFINITY ciktisi dahil)

set -e
if [ $# -lt 2 ]; then
    echo "kullanim: $0 <deney_adi> <komut...>" >&2
    exit 1
fi

NAME=$1; shift
DIR=~/reynaz-riscv/results/$(date +%F)
mkdir -p "$DIR"
OUT="$DIR/${NAME}_$(date +%H%M%S)"

# Thread yerlesimini her zaman acik yaz ve logla
export OMP_PLACES=${OMP_PLACES:-cores}
export OMP_PROC_BIND=${OMP_PROC_BIND:-spread}
export OMP_DISPLAY_AFFINITY=TRUE

# Baskasi calisiyorsa uyar
LOAD=$(cut -d' ' -f1 /proc/loadavg)
if awk "BEGIN{exit !($LOAD > 0.5)}"; then
    echo "UYARI: sistem yuku $LOAD - baska biri calisiyor olabilir, sonuc gurultulu olabilir" >&2
fi

{
    echo "date: $(date -Is)"
    echo "cmd: $*"
    echo "omp: NUM_THREADS=$OMP_NUM_THREADS PLACES=$OMP_PLACES PROC_BIND=$OMP_PROC_BIND"
    echo "load_before: $(cat /proc/loadavg)"
    echo "users: $(who | awk '{print $1}' | sort -u | tr '\n' ' ')"
    echo "governor: $(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null)"
    echo "freq_khz: $(cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_cur_freq 2>/dev/null | tr '\n' ' ')"
    echo "temp_mC: $(cat /sys/class/thermal/thermal_zone*/temp 2>/dev/null | tr '\n' ' ')"
    echo "mem_avail_MB: $(awk '/MemAvailable/{print int($2/1024)}' /proc/meminfo)"
    echo "thp: $(cat /sys/kernel/mm/transparent_hugepage/enabled 2>/dev/null)"
    echo "gcc: $(gcc --version | head -1)"
    echo "top_cpu:"
    ps -eo user,pcpu,comm --sort=-pcpu | head -6
} > "$OUT.meta"

"$@" > "$OUT.csv" 2> "$OUT.log"

echo "load_after: $(cat /proc/loadavg)" >> "$OUT.meta"
echo "kaydedildi: $OUT.{csv,meta,log}"
