# go

0. `go mod init interop`
1. create the file `interop.go`
2. add the following lines above your import statements:
```go
// #cgo CFLAGS: -g -Wall
// #include <stdlib.h>
// #include "./../c/peekpoke.c"
// #include "./../c/peekpoke.h"
import "C"
```
3. use `C` functions with the `C.` prefix
4. `go run .`