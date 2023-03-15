package main

import "fmt"

func main() {

	hitung := 1
	// standar loop
	for hitung < 11 {
		fmt.Println("im sad :(")
		hitung++
	}
	// short statement loop
	//dalam loop terbagi dua statement yaitu init sebelum di ekseskusi
	// dan  post statemen setelah di eksekusi
	for hitung := 1; hitung < 11; hitung++ {
		fmt.Println("let me do it for you")
	}

	// penggunaan text array pada for loop
	slice := []string{"reza", "wahyu", "adinata"}

	for i := 0; i < len(slice); i++ {
		fmt.Println(slice[i])
	}

	// penggunaan for range dalam array
	names := []string{"reza", "wahyu", "adinata"}
	for i, values := range names {
		fmt.Println("index", i, "=", values)
	}

	nama := make(map[string]string)
	nama["name"] = "Reza"
	nama["alamat"] = "Pisangan"

	for key, value := range nama {
		fmt.Println(key, "=", value)
	}
}
