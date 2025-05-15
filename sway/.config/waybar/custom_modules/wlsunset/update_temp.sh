#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Usage: $0 [inc|dec]"
    exit 1
fi

operation="$1"

if [[ -f ./wlsunset_temp_value.sh ]]; then
    source ./wlsunset_temp_value.sh
else
    echo "Warning: wlsunset_temp_value.sh not found. Using default (3500)."
    WLSUNSET_TEMP=3500
fi

if [[ "$WLSUNSET_TEMP" =~ ^[0-9]+$ ]]; then #check if number
    if [[ "$operation" == "dec" ]]; then
        if [[ "$WLSUNSET_TEMP" -gt 1200 ]]; then
            WLSUNSET_TEMP=$((WLSUNSET_TEMP - 200))
        fi
    elif [[ "$operation" == "inc" ]]; then
        if [[ "$WLSUNSET_TEMP" -lt 6000 ]]; then
            WLSUNSET_TEMP=$((WLSUNSET_TEMP + 200))
        fi
    else
        echo "Error: Invalid operation. Use 'inc' or 'dec'."
        echo "Usage: $0 [inc|dec]"
        exit 1
    fi
else
    echo "Error: WLSUNSET_TEMP is not a number. Using 3500"
    WLSUNSET_TEMP=3500
fi

echo "WLSUNSET_TEMP=$WLSUNSET_TEMP" > ./wlsunset_temp_value.sh

./restart_wlsunset.sh
