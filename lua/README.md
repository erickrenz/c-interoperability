# lua

0. Read Chapter 26 of the [Lua Book](https://www.lua.org/pil/contents.html) titled "Calling C From Lua" 
1. Create new files: `name.c`, `name.h`, and `Makefile`
2. Create the wrapper functions with the `l_` prefix (i.e. `l_peek()`, `l_poke()`)
3. Create static `luaL_Reg` object and entry point function `libopen_...`
4. Make sure header file is properly created and `#define LUA_EXTRALIBS` is set
5. Import and use the c functions through the wrapper functions
```lua
local lib = require "liblpp"

value = lib.peek(0)
```
6. Run lua file
```bash
lua peekpoke.lua
```