#!/bin/bash

if [ "$(playerctl status)" = "Playing" ]; then
    title=`exec playerctl metadata xesam:title`
    artist=`exec playerctl metadata xesam:artist`

    if [ "$artist" != "" ]; then
        echo "$title - $artist"
    else
        echo "$title"
    fi
else
    echo ""
fi
