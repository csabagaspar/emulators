#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ppsspp.env

#TODO uninstall flatpak
rm $APPS_DIR/ppsspp.sh
rm -rf $HOME/.var/app/org.ppsspp.PPSSPP
