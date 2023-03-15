package main

import "fmt"

// cara penggunaan dua function yang bisa di panggil 1 sama lain
func makananSehat() {
	fmt.Println("hallo")
}
// function parameter yang di contohkan
func buahYangSehat(makanan string, sayur string){
	fmt.Println("makanan yang sehat", makanan, sayur)
}

func main() {
	// penggunaan function yang sederhana 
	makananSehat()
	for i := 0; i < 10; i++ {
		makananSehat()
	}

	// penggunaan parameter harus sesuai dengang parameter yang sesuai
	// baik secara tipe data nya maupun filenya
	buahYangSehat("anggur", "sawi")
	makanan:= "melon"
	buahYangSehat(makanan, "kol")
}

