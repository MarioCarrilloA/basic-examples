package main

import (
		"fmt"
		"math"
)

func get_some_constants() (float64, float64){

	var pi_const float64
	var e_const float64
	pi_const = math.Pi
	e_const	 = math.E

	return pi_const, e_const
}

func main() {

	var pi_const float64
	var e_const float64

	pi_const, e_const = get_some_constants()
	fmt.Println(pi_const)
	fmt.Println(e_const)
}
