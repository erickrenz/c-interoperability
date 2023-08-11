#![allow(non_upper_case_globals)]
#![allow(non_camel_case_types)]
#![allow(non_snake_case)]

include!(concat!(env!("OUT_DIR"), "/bindings.rs"));

fn main() {
    let address: u32 = 0;
    let value_1: u32 = unsafe { peek(address) };
    println!("{address} : {value_1}");

    unsafe { poke(address, value_1 + 1) };
    let value_2: u32 = unsafe { peek(address) };
    println!("{address} : {value_2}");

    unsafe { poke(address, value_1) };
    let value_3: u32 = unsafe { peek(address) };
    println!("{address} : {value_3}");
}
