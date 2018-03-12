package main

import "fmt"

type str_example struct {
	name string
	age  int
}

func maps_and_structs() {
	var map_example = map[int]str_example{
		1: {"Bill", 23},
		2: {"Jeny", 27},
		3: {"three", 32},
	}

	for key, data := range map_example {
		fmt.Println("key:", key, "data:", data.name, data.age)
	}
	delete(map_example, 2)
	fmt.Println(map_example)
}

func basic_maps() {
	var map_example map[string]int
	map_example = make(map[string]int)
	map_example["one"] = 1
	map_example["two"] = 2
	map_example["three"] = 3
	fmt.Println(map_example)
	for key, data := range map_example {
		fmt.Println("Key:", key, "data:", data)
	}
}

func main() {
	fmt.Println("Maps in go language")
	basic_maps()
	maps_and_structs()
}
