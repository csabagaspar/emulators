#!/bin/bash
PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ppsspp.env

mkdir -p $APPS_DIR
cp $PPSSPP_INSTALL_DIR/ppsspp.sh $APPS_DIR

flatpak install --user flathub org.ppsspp.PPSSPP
flatpak update --user org.ppsspp.PPSSPP

mkdir -p $PPSSPP_VAR_DIR/config/ppsspp/PSP/SYSTEM/
cp $PPSSPP_INSTALL_DIR/configs/controls.ini $PPSSPP_VAR_DIR/config/ppsspp/PSP/SYSTEM
cp $PPSSPP_INSTALL_DIR/configs/ppsspp.ini $PPSSPP_VAR_DIR/config/ppsspp/PSP/SYSTEM
