#!/bin/sh
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/PC88
cd $RA_DIR/

$EMU_DIR/cpufreq.sh
$EMU_DIR/cpuswitch.sh

HOME=$RA_DIR/ $RA_DIR/ra64.trimui -v $NET_PARAM -L $RA_DIR/.retroarch/cores/quasi88_libretro.so "$@"
