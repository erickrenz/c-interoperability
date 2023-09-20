# Programming Languages with C Interoperability

The goal of this project was to test the feasibility, ease, and benefits of interoperability using existing `C` files (`./c/peekpoke.c` and `./c/peekpoke.h`) within other programming languages codebases.

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

## Next Steps

- use more complicated examples (ffi w/ strings or other heap allocated data)
- use of procedural, imperative `c` code within functional languages (ocaml, haskell, elixir)