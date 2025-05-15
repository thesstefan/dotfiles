#!/bin/bash

source ~/.config/wlsunset/wlsunset_temp_value.sh

WLSUNSET_ON=$(pgrep -x "wlsunset" | wc -l)

if [ $WLSUNSET_ON -eq 1 ];
then
    pkill -9 wlsunset
fi

wlsunset -l 47.3 -L 8.54 -t $WLSUNSET_TEMP &
