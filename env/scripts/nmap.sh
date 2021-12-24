#!/usr/bin/env bash


main()
{
    clear
    figlet "NMAP"
    sudo nmap -T4 -sn 192.168.0/24
}


main
