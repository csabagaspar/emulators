#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/yuzu.env

#Copy image
mkdir -p $APPS_DIR
cp $YUZU_DIR/$APP_NAME $APPS_DIR
chmod a+x $APPS_DIR/$APP_NAME

cp $YUZU_DIR/yuzu.sh $APPS_DIR

#~/.local/share/yuzu
mkdir -p $HOME/.local/share/yuzu/keys
cp $YUZU_DIR/configs/keys/*.keys $HOME/.local/share/yuzu/keys

#~/.local/share/yuzu/nand/system/Contents/registered
#mkdir -p $HOME/.local/share/yuzu/nand/system/Contents/registered
#TODO unzip and copy

#~/.config/yuzu
mkdir -p $HOME/.config/yuzu
cp $YUZU_DIR/configs/qt-config.ini $HOME/.config/yuzu
