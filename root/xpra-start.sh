#!/bin/sh
# start the xpra server
export DISPLAY=:100
export XPRA=6100
xpra start $DISPLAY --bind-tcp=0.0.0.0:$XPRA --dpi=108