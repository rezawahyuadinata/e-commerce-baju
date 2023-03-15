package main

import "fmt"

func main() {
	// var names [3]string = pendeklarasian variabel array dengan
	// batas panjang 3 dengan tipe data array
	// Cara 1
	var names [3]string

	names[0] = "reza"
	names[1] = "wahyu"
	names[2] = "adinata"

	// mengetahui panjang array
	fmt.Println(len(names))
	// mencetak array
	fmt.Println(names[0])
	fmt.Println(names[1])
	fmt.Println(names[2])

	// Cara 2
	var values = [3]int{
		12, 14, 51,
	}
	// mengetahui panjang array
	fmt.Println(len(values))
	// mencetak array
	fmt.Println(values[0])
	fmt.Println(values[1])
	fmt.Println(values[2])
}
