#ifndef LPP_H
#define LPP_H

#include <lua.h>
#include <lauxlib.h>

#include "./../c/peekpoke.c"
#include "./../c/peekpoke.h"

static int l_peek(lua_State* L);
static int l_poke(lua_State *L);

static const luaL_Reg liblpp [];
int luaopen_liblpp (lua_State *L);
    
#define LUA_EXTRALIBS { "liblpp", luaopen_liblpp },

#endif