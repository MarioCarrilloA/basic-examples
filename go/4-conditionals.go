package main

import "fmt"

func number_type(number int) {

	//fmt.Printf("The number %d\n",number)
	if number < 0 {
		fmt.Printf("The number %d is negative\n", number)
	} else if number == 0 {
		fmt.Printf("The number %d is zero\n", number)
	} else {
		fmt.Printf("The number %d is positive\n", number)
	}
}

func main() {
	number_type(0)
	number_type(-1)
	number_type(89)
}
