#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ra.env

#flatpak uninstall org.libretro.RetroArch
rm $APPS_DIR/ra.sh
rm -rf $RA_VAR_DIR
