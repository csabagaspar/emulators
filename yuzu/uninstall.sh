#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/yuzu.env

rm $APPS_DIR/$APP_NAME
rm $APPS_DIR/yuzu.sh

rm -rf $HOME/.local/share/yuzu
rm -rf $HOME/.config/yuzu
