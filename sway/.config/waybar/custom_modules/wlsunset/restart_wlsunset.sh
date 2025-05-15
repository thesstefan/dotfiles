#!/bin/bash

source ./wlsunset_temp_value.sh

if pgrep -x "wlsunset" > /dev/null
then
    pkill wlsunset
fi

wlsunset -l 47.3 -L 8.54 -t $WLSUNSET_TEMP > /dev/null 2>&1
