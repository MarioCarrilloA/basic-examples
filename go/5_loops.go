package main

import "fmt"

var serie = []int {3, 6 ,0, 2, 7, 1, 5}

func series() {
	for i := 0; i < 10; i++ {
		fmt.Println(i)
	}

	fmt.Println("Reading from a range");
	for i := range serie {
		fmt.Println(serie[i])
	}
}

func main() {
	series()
}
