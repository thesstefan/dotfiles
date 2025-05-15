#!/bin/bash

source ~/.config/wlsunset/wlsunset_temp_value.sh

WLSUNSET_ON=$(pgrep -x "wlsunset" | wc -l)

if [ $WLSUNSET_ON -eq 0 ];
then
    echo "{\"text\": \" \", \"percentage\": 0}"
else
    echo "{\"text\": \" \", \"percentage\": 100, \"tooltip\": \"Temperature: ${WLSUNSET_TEMP}K\"}"
fi
