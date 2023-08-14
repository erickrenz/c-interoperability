# zig

0. create `build.zig` with proper file paths and configuration
1. create `peekpoke.zig` and import the proper files:
```zig
const std = @import("std");
const lib = @cImport({
    @cInclude("./../c/peekpoke.h");
});
```
2. call all `c` functions using the `lib.` prefix from step 1
3. `zig build run`