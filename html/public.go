package main

import (
    "net/http"
    "log"
)

func main() {

    fs := http.FileServer(http.Dir("views"))
    http.Handle("/", fs)

    log.Println("Listening...")
    http.ListenAndServe(":9090", nil)

}