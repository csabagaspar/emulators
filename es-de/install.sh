#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/es-de.env

#Download
wget -O $ESDE_DIR/$APP_NAME https://gitlab.com/es-de/emulationstation-de/-/package_files/$VERSION/download

#Move app and sciprt
mkdir -p $APPS_DIR

cp $ESDE_DIR/es-de.sh $APPS_DIR

mv $ESDE_DIR/$APP_NAME $APPS_DIR
chmod a+x $APPS_DIR/$APP_NAME

#Copy config
mkdir -p $HOME/ES-DE
cp -r $ESDE_DIR/ES-DE $HOME