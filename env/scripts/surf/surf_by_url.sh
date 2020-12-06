#!/usr/bin/env bash







echo SURF URL
echo ""




echo -n "enter a url to surf: "; read url;

if [ $url == "q" ]; then
    echo "Program Terminated" && exit 1;
else
    surf $url
fi


