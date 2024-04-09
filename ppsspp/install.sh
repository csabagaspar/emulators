#!/bin/bash
PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ppsspp.env

#apps
mkdir -p $APPS_DIR
cp $PPSSPP_INSTALL_DIR/ppsspp.sh $APPS_DIR

#install
flatpak install --user flathub org.ppsspp.PPSSPP
flatpak update --user org.ppsspp.PPSSPP

#cheat setup
mkdir -p $PPSSPP_VAR_DIR/config/ppsspp/PSP/Cheats/
wget -O $PPSSPP_VAR_DIR/config/ppsspp/PSP/Cheats/cheat.db https://raw.githubusercontent.com/Saramagrean/CWCheat-Database-Plus-/master/cheat.db

#config setup
mkdir -p $PPSSPP_VAR_DIR/config/ppsspp/PSP/SYSTEM/
cp $PPSSPP_INSTALL_DIR/configs/controls.ini $PPSSPP_VAR_DIR/config/ppsspp/PSP/SYSTEM
cp $PPSSPP_INSTALL_DIR/configs/ppsspp.ini $PPSSPP_VAR_DIR/config/ppsspp/PSP/SYSTEM

#textures setup
mkdir -p $PPSSPP_VAR_DIR/config/ppsspp/PSP/TEXTURES/
cp -r $ARCHIVES_DIR/ppsspp/TEXTURES $PPSSPP_VAR_DIR/config/ppsspp/PSP/TEXTURES
