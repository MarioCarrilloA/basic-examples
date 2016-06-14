package main

import "fmt"

func add_list(name string, list chan string) {
	list <- name
}

func buffer_chan() {
	nums := make(chan int, 2)
	nums <- 1
	nums <- 2
//	nums <- 3
	fmt.Println(<- nums)
	fmt.Println(<- nums)
//	fmt.Println(<- nums)
}

func main() {
	list := make(chan string)
	go add_list("Joe", list)
	go add_list("Bill", list)
	n1, n2 := <-list, <-list
	fmt.Println(n1, n2)
	buffer_chan()
}
