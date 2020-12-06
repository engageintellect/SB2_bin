#!/usr/bin/env bash



read selection <<< $(fzf)


if [[ "$selection" != "" ]]; then
    SELECTION="$selection"
    nvim $SELECTION
else
    exit
fi


exit
