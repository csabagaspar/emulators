#!/bin/bash
PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ppsspp.env

mkdir -p $APPS_DIR
cp $PPSSPP_DIR/ppsspp.sh $APPS_DIR

flatpak install --user flathub org.ppsspp.PPSSPP
flatpak update --user org.ppsspp.PPSSPP

cp $PPSSPP_DIR/configs/controls.ini $HOME/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/SYSTEM
