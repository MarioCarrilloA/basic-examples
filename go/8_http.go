package main

import (
	"fmt"
	"net/http"
)

type message struct{}

func (m message) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello world")
}

func main() {
	var m message
	http.ListenAndServe("localhost:8000", m)
}
