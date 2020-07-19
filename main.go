package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, _ *http.Request) {
		fmt.Fprint(w, "Hello! Your request was processed.")
	},
	)
	http.ListenAndServe(":8000", nil)
}
