const std = @import("std");
const lib = @cImport({
    @cInclude("./../c/peekpoke.h");
});

pub fn main() anyerror!void {
    const stdout = std.io.getStdOut().writer();
    const address = 0;

    const value_1 = lib.peek(address);
    try stdout.print("{d}\n", .{value_1});

    lib.poke(address, value_1 + 1);
    const value_2 = lib.peek(address);
    try stdout.print("{d}\n", .{value_2});

    lib.poke(address, value_1);
    const value_3 = lib.peek(address);
    try stdout.print("{d}\n", .{value_3});
}
