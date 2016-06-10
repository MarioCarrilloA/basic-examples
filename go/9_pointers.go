package main

import "fmt"

type data struct {
	name string
	age  int
}

func main() {
	reg := data{"Joe", 24}
	reg.name = "Bill"
	reg2 := &reg
	fmt.Println("Reg:", reg.name, reg.age)
	reg2.name = "Joe"
	fmt.Println("Reg:", reg.name, reg.age)
}
