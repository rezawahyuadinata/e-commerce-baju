package main

import "fmt"

func main(){
	var ujian = 90
	var absensi = 85

	var lulusUjian = ujian > 80
	var lulusAbsensi = absensi > 80
	fmt.Println(lulusUjian)
	fmt.Println(lulusAbsensi)

	var lulus = lulusAbsensi && lulusUjian
	fmt.Println(lulus)
}