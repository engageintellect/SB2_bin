#!/bin/bash 

. "${HOME}/.cache/wal/colors.sh"


read selection <<< $(ls -a $1 | dmenu -fn 'Hack Nerd Font -10' -nb "$color0" -nf \
    "$color15" -sb "$color3" -sf "$color0" -nhb "$color3" -nhf "$color0" -shb "$color3" -shf "$color15" -h 25 -l 12 -p 'Edit config > ')


if [[ "$1" != "" ]]; then
    DIR="$1"
else
    DIR=.
fi


if [[ "$selection" != "" ]]; then
    SELECTION="$selection"
    nvim $DIR/$SELECTION
else
    exit
fi


exit
