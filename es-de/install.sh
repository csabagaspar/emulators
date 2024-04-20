#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/es-de.env

#install
mkdir -p $APPS_DIR
cp $ESDE_EMU_DIR/es-de.sh $APPS_DIR

wget -O $ESDE_EMU_DIR/$APP_NAME https://gitlab.com/es-de/emulationstation-de/-/package_files/$VERSION/download
mv $ESDE_EMU_DIR/$APP_NAME $APPS_DIR
chmod a+x $APPS_DIR/$APP_NAME

#config copy
mkdir -p $HOME/ES-DE/settings
mkdir -p $HOME/ES-DE/custom_systems

cp $ESDE_EMU_DIR/ES-DE/settings/es_settings.$SYSTEM.xml $HOME/ES-DE/settings
mv $HOME/ES-DE/settings/es_settings.$SYSTEM.xml $HOME/ES-DE/settings/es_settings.xml

cp -r $ESDE_EMU_DIR/ES-DE/custom_systems/* $HOME/ES-DE/custom_systems

#copy roms (editable start scripts)
cp -r $ESDE_EMU_DIR/roms/* $ROMS_DIR

#links
ln -s $INSTALLS_DIR/es-de/gamelists $HOME/ES-DE/gamelists
ln -s $INSTALLS_DIR/es-de/downloaded_media $HOME/ES-DE/downloaded_media
