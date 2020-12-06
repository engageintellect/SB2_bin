#!/usr/bin/env python3


import os


def display():
    print("                     __              _    ")
    print("     ___ _   _ _ __ / _|  _   _ _ __| |    ")
    print("    / __| | | | '__| |_  | | | | '__| |    ")
    print("    \__ \ |_| | |  |  _| | |_| | |  | |    ")
    print("    |___/\__,_|_|  |_|    \__,_|_|  |_|    ")
    print("\n")

def usr_input():
    os.system('clear')
    display()
    url = input("enter a url to surf: ")
    if url != 'q':
        os.system(f"surf {url}")
    else:
        os.system('clear')
        quit()
    main()


def main():
    usr_input()




main()


