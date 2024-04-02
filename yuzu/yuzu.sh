#!/bin/bash

EA_LATEST=Linux-Yuzu-EA-4176.AppImage
MAIN_LATEST=yuzu-mainline-20240304-537296095.AppImage

APP_NAME=$MAIN_LATEST

$HOME/apps/$APP_NAME -f -g $1
