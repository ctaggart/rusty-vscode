#!/bin/sh
# start the xpra server
# source this script if you need DISPLAY set `. start-xpra.sh`
# $XPRASTART is intended for extra setting like `--dpi=108`
if [ "$DISPLAY" = "" ]; then
    export DISPLAY=:100
fi
if [ "$XPRAPORT" = "" ]; then
    export XPRAPORT=6100
fi
xpra start $DISPLAY --bind-tcp=0.0.0.0:$XPRAPORT --pulseaudio=no $XPRASTART