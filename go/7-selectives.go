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

func kernel_version(version float32) bool {
	var accepted_version bool
	switch {
	case version < 2.6:
		fmt.Println("Obsolete version")
		accepted_version = false
	case version == 4.4:
		fmt.Println("Long term support version")
		accepted_version = true
	case version > 4.6:
		fmt.Println("Recent version")
		accepted_version = true
	default:
		fmt.Println("error")
		accepted_version = false
	}

	return accepted_version
}

func main() {
	fmt.Println("Multiple selective")
	os_selection(2)
	if kernel_version(4.4) {
		fmt.Println("Valid kernel version")
	} else {
		fmt.Println("Invalid kernel version")
	}
}
