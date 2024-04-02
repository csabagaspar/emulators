#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ra.env

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub org.libretro.RetroArch
flatpak update --user org.libretro.RetroArch

cp $RA_DIR/ra.sh $APPS_DIR

CORES_DIR="$HOME/.var/app/org.libretro.RetroArch/config/retroarch/cores"
CORES_DOWNLOAD_URL="https://buildbot.libretro.com/nightly/linux/x86_64/latest/"

mkdir -p "$CORES_DIR"

CORES_TO_DOWNLOAD=(
  fbneo_libretro
  snes9x_libretro
  dosbox_pure_libretro
  #PUAE
  #VICEx64sc acc
  #caprice32
  #genesis plus gx
  #Fuse
  #MAME2010
  #hatari
)

#Download cores
for CORE in "${CORES_TO_DOWNLOAD[@]}"; do
  curl "$CORES_DOWNLOAD_URL$CORE.so.zip" --output "$CORES_DIR/${CORE}.zip"
done

#Extract cores
for entry in "$CORES_DIR"/*.zip; do
  unzip -q -o "$entry" -d "$CORES_DIR"
done

for entry in "$CORES_DIR"/*.zip; do
  rm -f "$entry"
done
