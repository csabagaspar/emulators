#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/es-de.env

rm $HOME/ES-DE/downloaded_media
rm $HOME/ES-DE/gamelists

rm -rf $HOME/ES-DE
rm $APPS_DIR/$APP_NAME
rm $APPS_DIR/es-de.sh
