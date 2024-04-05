#!/bin/sh

cdemu unload 0
sleep 1s
cdemu load 0 ~/Games/janes-f15/F15_V102_F.mds
sleep 1s
env LUTRIS_SKIP_INIT=1 lutris lutris:rungame/janes-f15
