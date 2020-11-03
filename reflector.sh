#!/usr/bin/env bash

clear
echo "REFRSHING MIRROR LIST..."
sleep 1

sudo reflector -c "US" -f 6 -l 6 -n 6 --save /etc/pacman.d/mirrorlist

echo "MIRROR LIST HAS BEEN UPDATED."
sleep 2
clear
