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

#CORES
mkdir -p "$CORES_DIR"
## download cores
for CORE in "${CORES_TO_DOWNLOAD[@]}"; do
  curl "$CORES_DOWNLOAD_URL$CORE.so.zip" --output "$CORES_DIR/${CORE}.zip"
done

## extract cores
for entry in "$CORES_DIR"/*.zip; do
  unzip -q -o "$entry" -d "$CORES_DIR"
done

for entry in "$CORES_DIR"/*.zip; do
  rm -f "$entry"
done

#CONFIG
mkdir -p $CONFIG_RA_DIR
cp $RA_DIR/configs/retroarch.$SYSTEM.cfg $CONFIG_RA_DIR
mv $CONFIG_RA_DIR/retroarch.$SYSTEM.cfg $CONFIG_RA_DIR/retroarch.cfg
cp $RA_DIR/configs/retroarch-core-options.cfg $CONFIG_RA_DIR
