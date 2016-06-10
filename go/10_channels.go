package main

import "fmt"

func add_list(name string, list chan string) {
	list <- name
}

func main() {
	list := make(chan string)
	go add_list("Joe", list)
	go add_list("Bill", list)
	n1, n2 := <-list, <-list
	fmt.Println(n1, n2)
}
