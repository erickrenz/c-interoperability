const Builder = @import("std").build.Builder;


const c_args = [_][]const u8{
    "-Wall",
    "-std=c17",
    "-pedantic",
    // prevent sigill
    "-fno-sanitize=undefined",
};

pub fn build(b: *Builder) void {
    const exe = b.addExecutable("test", "peekpoke.zig");
    exe.linkLibC();
    exe.linkSystemLibrary("c");
    exe.addIncludeDir("./../c");
    exe.addCSourceFile("./../c/peekpoke.c", &c_args);
    exe.install();

    b.default_step.dependOn(&exe.step);

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());
    
    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    const test_step = b.step("test", "Test the program");
    test_step.dependOn(&run_cmd.step);
}