extern crate bindgen;
extern crate cc;

use std::env;
use std::path::PathBuf;

fn main() {
    println!("cargo:rerun-if-changed=./../c/peekpoke.h");
    println!("cargo:rerun-if-changed=./../c/peekpoke.c");

    let bindings = bindgen::Builder::default()
        .header("./../c/peekpoke.h")
        .parse_callbacks(Box::new(bindgen::CargoCallbacks))
        .generate()
        .expect("Unable to build bindgen");

    let out_path = PathBuf::from(env::var("OUT_DIR").unwrap());
    bindings
        .write_to_file(out_path.join("bindings.rs"))
        .expect("Couldn't write bindings!");

    cc::Build::new()
        .file("./../c/peekpoke.c")
        .compile("peekpoke");
}
