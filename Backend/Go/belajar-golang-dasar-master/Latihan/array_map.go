package main

import "fmt"

// map adalah suatu fungsi yang dimana kita bisa mengambil suatu indeks yang dapat dicustom
// sehingga memudahkan dalam mengambil suatu data pada array
// map harus memiliki kata kunci yang berbeda-beda
// map tidak memiliki batas jumlah data asalakan memiliki indeks yang berbeda
func main() {
	// deklarasi di bawah ini menjelaskan variabel mempunyai map
	// dengan jenis key dan jenis data yang memiliki tipe string
	person := map[string]string{
		"name":    "eko",
		"address": "Subang",
	}
	// menambah value dalam map
	person["title"] = "programmer"

	fmt.Println(person)
	fmt.Println(person["name"])
	fmt.Println(person["subang"])
	
	var book map[string]string = make(map[string]string)
	book["title"] = "Belajar Go-lang"
	book["author"] = "reza wahyu adinata"
	book["ups"] = "salah"

	fmt.Println(book)
	fmt.Println(len(book))

	delete(book, "ups")
	fmt.Println(book)
	fmt.Println(len(book))
}
