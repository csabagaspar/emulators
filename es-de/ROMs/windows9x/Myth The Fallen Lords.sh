#!/bin/sh

cdemu unload 0
sleep 1s
cdemu load 0 ~/Games/myth/Myth\ The\ Fallen\ Lords.cue
sleep 1s
env LUTRIS_SKIP_INIT=1 lutris lutris:rungame/myth
