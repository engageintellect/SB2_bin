#!/usr/bin/env bash 

#########################################################
# A sript to add new bookmarks to rofi bookmarks script #
#########################################################

FILE=~/bin/env/scripts/rofi/bookmarks/bookmarks.txt


display()
{
    clear
    figlet "add  bookmark"
    echo "#######################################################################"
    echo -e "\n"
}

main()
{

    echo -n "Enter site to add to bookmarks: "
    read site
    echo "Adding $site to $FILE"
    echo $site >> $FILE
    sleep 1
    echo "Adding $site to $FILE"
    echo "$site added to $FILE"
    sleep 1
    display
    bat $FILE
    clear
}

display
main
exit
