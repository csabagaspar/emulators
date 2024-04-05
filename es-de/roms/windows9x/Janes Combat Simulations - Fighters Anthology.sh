#!/bin/sh

cdemu unload 0
sleep 1s
cdemu load 0 ~/Games/janes-fighters-anthology/Janes-FA_1.bin
sleep 1s
env LUTRIS_SKIP_INIT=1 lutris lutris:rungame/janes-fighters-anthology
