#!/bin/bash

PARENT_PATH=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
source $PARENT_PATH/ra.env

rm $APPS_DIR/ra.sh
#TODO flatpack uninstall
#TODO delete config
