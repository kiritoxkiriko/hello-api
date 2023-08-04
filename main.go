package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	hello := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		log.Println("Hello World!")
		fmt.Fprintf(w, "Hello, world!")
	})
	http.HandleFunc("/", hello)

	log.Println("Server started on port 8080")
	http.ListenAndServe(":8080", nil)
}
