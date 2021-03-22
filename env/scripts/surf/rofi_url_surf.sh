#!/usr/bin/env bash

BROWSER=surf
read selection <<< $(rofi -dmenu -p "URL" -font "Hack Nerd font 22" -location 0 -width 25 -lines 10)



if [[ $selection == "" ]]; then
    echo nothing selected, exiting...
    sleep 1
    clear
else
    $BROWSER $selection
fi
