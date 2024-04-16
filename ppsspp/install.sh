#!/bin/bash
PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ppsspp.env

#apps copy
mkdir -p $APPS_DIR
cp $PPSSPP_EMU_DIR/ppsspp.sh $APPS_DIR

#install
flatpak install --user flathub org.ppsspp.PPSSPP
flatpak update --user org.ppsspp.PPSSPP

#cheat setup
mkdir -p $PPSSPP_VAR_PSP_DIR/Cheats/
wget -O $PPSSPP_VAR_PSP_DIR/Cheats/cheat.db https://raw.githubusercontent.com/Saramagrean/CWCheat-Database-Plus-/master/cheat.db

#config setup
mkdir -p $PPSSPP_VAR_PSP_DIR/SYSTEM/
cp $PPSSPP_EMU_DIR/configs/controls.ini $PPSSPP_VAR_PSP_DIR/SYSTEM
cp $PPSSPP_EMU_DIR/configs/ppsspp.$SYSTEM.ini $PPSSPP_VAR_PSP_DIR/SYSTEM
mv $PPSSPP_VAR_PSP_DIR/SYSTEM/ppsspp.$SYSTEM.ini $PPSSPP_VAR_PSP_DIR/SYSTEM/ppsspp.ini

#textures setup
mkdir -p $PPSSPP_VAR_PSP_DIR
ln -s $INSTALLS_DIR/ppsspp/TEXTURES $PPSSPP_VAR_PSP_DIR/TEXTURES
