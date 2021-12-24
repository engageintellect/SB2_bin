#!/usr/bin/env bash

### A BASH SCRIPT TO VIDEO CAPTURE THE DISPLAY ###


clear_screen()
{
    clear && figlet "SCREEN RECORD"
}

record_screen()
{
    # GET CURRENT DISPLAY RESOLUTION
    res=$(xrandr | grep connected | grep primary | awk '{print $4}' | sed "s/+0+0//g")
    
    echo -n "ENTER FILE NAME: "
    read filename
    if [[ $filename == "q" ]]; then
        clear && exit
    else
        cd
        ffmpeg -f x11grab -s $res -r 25 -i :0.0 $filename.h264
        clear_screen && echo "SAVING VIDEO '$filename'" && sleep 1
        clear
    fi
}

main()
{
    clear_screen
    record_screen
}
main
