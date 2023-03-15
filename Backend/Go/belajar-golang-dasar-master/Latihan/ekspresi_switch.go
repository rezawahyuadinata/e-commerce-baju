package main

import "fmt"

// cara penggunaan switch case dalam golang
func main() {
	name := "reza"

	// penggunaan switch dengan kondisi variabel sudah ada
	switch name {
	case "reza":
		fmt.Println("reza wahyu adinata")
	case "sutarman":
		fmt.Println("let me do it for you")
	default:
		fmt.Println("arghhhhhhh")
	}

	// penggunaan switch tanpa kondisi variabel
	length := len(name)
	switch{
	case length > 10:
		fmt.Println("siuuuuu")
	case length < 10:
		fmt.Println("uisssss")
	}

	// penggunaan short statement switch case
	switch length := len(name); length > 5{
	case  true:
		fmt.Println("aku jg mw")
	case false:
		fmt.Println("dia juga mau")
	}
}