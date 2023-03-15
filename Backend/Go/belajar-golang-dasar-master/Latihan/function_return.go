package main

import "fmt"

// dalam function return adalah suatu fungsi yang dimana dia akan mengembalikan nilai tersebut
// contoh dibawah menggambarkan fungsi return tersebut yang dimana setelah parameter akan diberikan jenis tipe data yang spesific
// yang merupakan tipe data nilai return tersebut
// dalam fungsi return disini akan memberikan nilai akhir pada process kode tersebut
// apabila setelah return diberikan kondisi program lagi makan function tersebut akan error
func buahYangEnak(buah string) string {
	return "buah yang enak adalah " + buah
}
func sayurYangEnak() (sayur string) {
	sayur = "sayur yang enak adalah wortel"
	return sayur
}

func main() {
	fmt.Println(buahYangEnak("semangka"))
	will := sayurYangEnak()
	fmt.Println(will)
}
