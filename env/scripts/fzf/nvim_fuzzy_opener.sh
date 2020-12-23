#!/bin/bash 

# . "${HOME}/.cache/wal/colors.sh"


read selection <<< $(ls $1 | fzf)


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
