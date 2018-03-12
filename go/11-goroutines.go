package main

import (
		"fmt"
		"time"
)

func p_10_messages(msg string){
	for i := 0; i < 10; i++ {
		time.Sleep(50 * time.Millisecond)
		fmt.Println(msg)
	}
}

func main() {
	go p_10_messages("Hello")
	p_10_messages("World")
}
