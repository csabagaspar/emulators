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

mkdir -p $PPSSPP_VAR_DIR/config/ppsspp/Cheats/
wget -O $PPSSPP_VAR_DIR/config/ppsspp/Cheats/cheat.db https://raw.githubusercontent.com/Saramagrean/CWCheat-Database-Plus-/master/cheat.db

mkdir -p $PPSSPP_VAR_DIR/config/ppsspp/PSP/SYSTEM/
cp $PPSSPP_INSTALL_DIR/configs/controls.ini $PPSSPP_VAR_DIR/config/ppsspp/PSP/SYSTEM
cp $PPSSPP_INSTALL_DIR/configs/ppsspp.ini $PPSSPP_VAR_DIR/config/ppsspp/PSP/SYSTEM

mkdir -p $PPSSPP_VAR_DIR/config/ppsspp/PSP/TEXTURES/
cp -r $INSTALLS_DIR/ppsspp/TEXTURES $PPSSPP_VAR_DIR/config/ppsspp/PSP/TEXTURES
