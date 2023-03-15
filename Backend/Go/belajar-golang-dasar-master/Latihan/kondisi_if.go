package main

import "fmt"

// kondisi menggunakan if elseif else

func main() {
	name := "sutarjom"

	if name == "reza wahyu adinata" {
		fmt.Printf("halo perkenalkan nama saya = " + name)
	} else if name == "sutarjo" {
		fmt.Printf("Bukan bambang")
	} else{
		fmt.Printf("can you give me my food")
	}

	// penggunaan short expression yaitu adalah penggunaan dua kondisi sebelumname
	// memulai pengulangan
	if length := len(name); length > 5{
		fmt.Println("siuuuu")
	} else {
		fmt.Println("let me do it for you")
	}
}
