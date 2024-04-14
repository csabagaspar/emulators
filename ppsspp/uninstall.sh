#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ppsspp.env

flatpak uninstall org.ppsspp.PPSSPP
rm $APPS_DIR/ppsspp.sh
rm $PPSSPP_VAR_PSP_DIR/TEXTURES
rm -rf $PPSSPP_VAR_DIR
