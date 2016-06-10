package main

import "fmt"

func os_selection(opt int) int {
	switch opt {
		case 0:
			fmt.Println("Ubuntu")
		case 1:
			fmt.Println("Fedora")
		case 2:
			fmt.Println("Debian")
		case 3:
			fmt.Println("CentOS")
		default:
			fmt.Println("error")
	}

	return 0
}

func main() {
	fmt.Println("Multiple selective")
	os_selection(2)
	os_selection(-1)
}
