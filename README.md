# Programming Languages with C Interoperability

Using existing `C` files (`./c/peekpoke.c` and `./c/peekpoke.h`) within other programming laguages.

## Low Level Programming Languages

- industry standard
    - `c++`
- best alternatives
    - `rust`
    - `go`    
    - `lua`
    - `zig`
- not implemented
    - `ocaml`
    - `haskell`
    - `elixir`


## Final Thoughts

_Overall, I am very impressed with `go`'s speed and simplicity._

- `go` had the easiest/fastest/simplest experience using raw `.c` and `.h` files. 
- `rust` and `zig` require build files to bind the proper files and file paths. 
- `rust` is very powerful once the bindings are set (bias - I am most experienced with this language)
- `zig` works nicely, but the language is not at version 1.0 yet so all features are subject to change.
- `lua` is a simple, python-esque language, but connecting c code involves writing additional `.c` and `.h` wrapper/binding functions.

