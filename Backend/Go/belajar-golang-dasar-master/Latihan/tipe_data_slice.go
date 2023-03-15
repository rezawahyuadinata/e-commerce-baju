// tipe data slice adalah potongan dari data array
// slice mirip dengan array yang membedakan adalah ukuran slice bisa berubah
// slice dan array selalu tekoneksi, dimana slice adalah data yang
// mengakses  sebagian atau seluruh data di array
// slice memiliki 3 tipe data utama yaitu
// - pointer = nilai pertama pada pertama
// - length = panjang dari array slice
// - capacity = kapasitas panjang array  dr pointer sampai total array
package main

import "fmt"

func main() {
	// slice adalah manipulasi array yang menguobah nilai array pada array
	// [...] adalah sebuah penentu nilai pada array yang belum diketahui
	var bulan = [12]string{
		"Januari",
		"Febuari",
		"Maret",
		"April",
		"Mei",
		"Juni",
		"Juli",
		"Agustus",
		"September",
		"Oktober",
		"November",
		"Desember",
	}
	// mengambil data array yang sudah terslice
	var slice1 = bulan[4:7]
	fmt.Println(slice1)
	// menghitung panjang array yang sudah terslice
	fmt.Println(len(slice1))
	// menghitung kapasitas array sudah terslice
	fmt.Println(cap(slice1))
	// mencetak array
	fmt.Println(bulan)

	// berikut adalah memanipulasi slice di array
	var slice2 = bulan[3:7]
	fmt.Println(slice2)
	// append adalah sebuah fungsi yang dimana 
	// berfungsi untuk menambahkan variabel dalam suatu array
	// jika kapasitas dari suatu array masih dapat dilakukan 
	//  maka variabel dari append akan menambahkan nnya
	//  jika tidak maka variabel append yang akan di tambahkan 
	// akan mereplace variabel yang sudah ada pada batas akhir dari suatua array

	// menambahkan nilai array bary
	var slice3 = append(slice2, "nama")
	fmt.Println(slice3)
	// mengubah nilai pada array dengan menyebutkan indeks
	// dari suatu array
	slice3[1] = "sry"
	fmt.Println(slice3)
	fmt.Println(slice2)
	fmt.Println(bulan)

	// membuat slice baru
	newSlice := make([]string,3,5)
	// memberikan nilai pada slice baru
	//  penambahan nilai suatu slice harus sesuai dengan jumlah variabel
	// make yang dibutuhkan
	newSlice[0] = "reza"
	newSlice[1] = "wahyu"
	newSlice[2] = "adinata"
	fmt.Println(newSlice)
	newSlice = append(newSlice, "tambah")
	fmt.Println(newSlice)

	// melakukan copy slice pada variabel slice yang baru
	copySlice :=  make([]string, len(newSlice), cap(newSlice))
	copy(copySlice, newSlice)
	fmt.Println(copySlice)

	iniArray := [...]int{1,2,3,4,5}
	iniSlice := []int{1,2,3,4,5}

	fmt.Println(iniArray)
	fmt.Println(iniSlice)
}
