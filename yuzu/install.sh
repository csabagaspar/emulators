#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/yuzu.env

#Copy image
mkdir -p $APPS_DIR
cp $ARCHIVES_DIR/yuzu/$APP_NAME $APPS_DIR
chmod a+x $APPS_DIR/$APP_NAME

cp $YUZU_DIR/yuzu.sh $APPS_DIR

#~/.local/share/yuzu
mkdir -p $HOME/.local/share/yuzu/keys
cp $ARCHIVES_DIR/yuzu/keys/*.keys $HOME/.local/share/yuzu/keys

#~/.local/share/yuzu/nand/system/Contents/registered
mkdir -p $HOME/.local/share/yuzu/nand/system/Contents/registered
unzip $ARCHIVES_DIR/yuzu/firmware17_0_1.zip -d $HOME/.local/share/yuzu/nand/system/Contents/registered

#~/.config/yuzu
mkdir -p $HOME/.config/yuzu
mkdir -p $HOME/.config/yuzu/input
cp $YUZU_DIR/configs/qt-config.ini $HOME/.config/yuzu
cp $YUZU_DIR/configs/input/steamdeck.ini $HOME/.config/yuzu/input
