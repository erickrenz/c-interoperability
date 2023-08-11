package main

// #cgo CFLAGS: -g -Wall
// #include <stdlib.h>
// #include "./../c/peekpoke.c"
// #include "./../c/peekpoke.h"
import "C"

import "fmt"

func main() {
	address := C.uint(0)
	value_1 := C.uint(C.peek(address))
	fmt.Printf("%d : %d\n", address, value_1)

	C.poke(address, value_1 + 1)
	value_2 := C.uint(C.peek(address))
	fmt.Printf("%d : %d\n", address, value_2)

	C.poke(address, value_1)
	value_3 := C.uint(C.peek(address))
	fmt.Printf("%d : %d\n", address, value_3)
}