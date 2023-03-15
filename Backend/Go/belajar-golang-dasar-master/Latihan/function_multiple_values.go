package main

import "fmt"

func getfullName() (string, string, int32) {
	return "makanan", "sayur", 20
}

func main() {
	// bentuk return values yang sederhana dalam multiple
	makanan, sayur, nomor := getfullName()
	fmt.Println(makanan, sayur, nomor)

	// jika tidak ingin di return menggunakan underscore untuk mengosongkan
	buah, _, _ := getfullName()
	fmt.Println(buah)
}
