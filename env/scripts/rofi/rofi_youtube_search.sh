#!/usr/bin/env bash

BROWSER='surf -N -z 1.5'
# read selection <<< $(rofi -dmenu -p "SEARCH" -font "Hack Nerd font 10" -location 1 -width 20 -lines 100 -m 1)
read selection <<< $(rofi -dmenu -p "SEARCH YOUTUBE" -font "Hack Nerd font 22" -location 0 -width 25 -lines 10)



if [[ $selection == "" ]]; then
    echo nothing selected, exiting...
    sleep 1
    clear
else
    # echo $BROWSER "google.com/search?&q=""$selection"
    $BROWSER "youtube.com/search?&q=""$selection"
fi
