#!/usr/bin/env bash


pacman --color=auto -Q | awk '{print $1}' | less
