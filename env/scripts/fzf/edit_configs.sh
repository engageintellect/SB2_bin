#!/usr/bin/env bash

# FZF script for editing dotfiles.
cd ~/.config
read selection <<< $(fzf)

if [[ $selection != "" ]]; then
    nvim $selection
else
    exit
fi



