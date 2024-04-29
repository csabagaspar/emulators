#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ra.env

flatpak uninstall org.libretro.RetroArch
rm $APPS_DIR/ra.sh
rm $CONFIG_RA_DIR/system
#rm $CONFIG_RA_DIR/saves
#rm $CONFIG_RA_DIR/states
rm $CONFIG_RA_DIR/config
rm $CONFIG_RA_DIR/overlays
rm -rf $RA_VAR_DIR
