package main

import "fmt"

func main() {
	// penggunaan break dalam for loop
	for i := 0; i < 10; i++ {
		if i == 5 {
			break
		}
		fmt.Println("perulangan ke ", i)
	}

	// penggunaan continue dalam for loop
	for i := 0; i < 10; i++ {
		if i%2 == 0 {
			continue
		}
		fmt.Println("perulangan ke ", i)
	}
}
