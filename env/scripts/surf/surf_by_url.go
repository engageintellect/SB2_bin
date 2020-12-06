package main

import (
	"fmt"
	"os"
	"os/exec"
)

var url string

func main() {
	clear_screen()
	surf()
}

func get_url(url string) string {
	fmt.Println("                 __              _     ")
	fmt.Println(" ___ _   _ _ __ / _|  _   _ _ __| |    ")
	fmt.Println("/ __| | | | '__| |_  | | | | '__| |    ")
	fmt.Println("\\__ \\ |_| | |  |  _| | |_| | |  | |    ")
	fmt.Print("|___/\\__,_|_|  |_|    \\__,_|_|  |_|  \n\n")
	fmt.Print("enter a url: ")
	fmt.Scan(&url)

	switch {
	case url == "q":
		clear_screen()
		os.Exit(0)
	}

	return url
}

func surf() {
	cmd := exec.Command("surf", string(get_url(url)))
	stdout, err := cmd.Output()
	if err != nil {
		fmt.Println(err.Error())
		return
	}
	fmt.Println(string(stdout))
}

func clear_screen() {
	cmd := exec.Command("clear")
	stdout, err := cmd.Output()
	if err != nil {
		fmt.Println(err.Error())
		return
	}
	fmt.Println(string(stdout))
}
