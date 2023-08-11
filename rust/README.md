# rust

0. `cargo new rust`
1. add the `bindgen` crate to your project's `cargo.toml`
```toml
[build-dependencies]
bindgen = "0.66.1"
```
2. create `./build.rs` and fill with proper filepaths
3. add include! statememt in `./src/main.rs` or `./src/lib.rs`
```rust
include!(concat!(env!("OUT_DIR"), "/bindings.rs"));
```
4. use `C` functions within `unsafe {}` code blocks
5. `cargo build` and `cargo run`