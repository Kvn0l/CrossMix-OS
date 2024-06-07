#!/bin/sh
echo "===================================="
echo $0 $*
source /mnt/SDCARD/System/usr/trimui/scripts/FolderOverrideFinder.sh
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/NEOGEO
cd $RA_DIR/

$EMU_DIR/cpufreq.sh
$EMU_DIR/cpuswitch.sh

HOME=$RA_DIR/ $RA_DIR/ra64.trimui -v $NET_PARAM -L $RA_DIR/.retroarch/cores/fbalpha2012_neogeo_libretro.so "$@"

#HOME=$RA_DIR/ $RA_DIR/ra64.trimui -v $NET_PARAM -L $EMU_DIR/fbalpha2012_neogeo_libretro.so "$@"
#HOME=$RA_DIR/ $RA_DIR/ra64.trimui -v $NET_PARAM -L $EMU_DIR/fbalpha2012_libretro.so "$@"
# HOME=$RA_DIR/ $RA_DIR/ra64.trimui -v $NET_PARAM -L $RA_DIR/.retroarch/cores/geolith_libretro.so "$@"
#HOME=$RA_DIR/ $RA_DIR/retroarch -v $NET_PARAM -L $EMU_DIR/fbalpha2012_neogeo_libretro.so "$@"