#!/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"


dmenu_run -fn 'Hack Nerd Font -10' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color0" \
    -nhb "$color3" -nhf "$color0" -shb "$color3" -shf "$color15" -h 60 -p " "

