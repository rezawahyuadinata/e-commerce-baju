package main

import "fmt"

func balikNama() (firstname string, middlename string, lastname string) {
	firstname = "reza"
	middlename = "wahyu"
	lastname = "adinata"
	return firstname, middlename, lastname
}

func samaNama(firstname string, middlename string, lastname string) (string, string, string) {
	return firstname, middlename, lastname
}
func main() {
	a, b, c := balikNama()
	fmt.Println(a)
	fmt.Println(b)
	fmt.Println(c)

	d, e, f := samaNama("reza", "wahyu", "adinata")
	fmt.Println(d)
	fmt.Println(e)
	fmt.Println(f)

}
