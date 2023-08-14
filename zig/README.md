# zig

0. `zig init-exe`
1. within `build.zig` add the proper file paths and configuration
2. within `src/main.zig` import the proper files:
```zig
const std = @import("std");
const lib = @cImport({
    @cInclude("./../c/peekpoke.h");
});
```
3. call all `c` functions using the `lib.` prefix from step 1
4. `zig build run`