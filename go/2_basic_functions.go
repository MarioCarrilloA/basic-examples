package main

import "fmt"

func addition(a int, b int) int {
	return a + b
}

func subtraction(a int, b int) int {
	return a - b
}

func division(a int, b int) int {
	return a / b
}

func multiplication(a int, b int) int {
	return a * b
}

func main() {
	fmt.Println(addition(14, 9))
	fmt.Println(subtraction(8, 11))
	fmt.Println(division(25, 5))
	fmt.Println(multiplication(3, 7))
}
