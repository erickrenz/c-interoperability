#include <lua.h>
#include <lauxlib.h>

#include "lpp.h"

static int l_peek(lua_State *L) {
    lua_Unsigned addr = luaL_checkinteger(L, 1); /* get argument */
    lua_pushinteger(L, peek(addr)); /* push result */
    return 1; /* number of results */
}

static int l_poke(lua_State *L) {
    lua_Unsigned addr = luaL_checkinteger(L, 1);
    lua_Unsigned value = luaL_checkinteger(L, 2);
    poke(addr, value);
    return 1; /* success */
}

static const luaL_Reg liblpp [] = {
    {"peek", l_peek},
    {"poke", l_poke},
    {NULL, NULL} /* sentinel */
};

int luaopen_liblpp(lua_State *L) {
    luaL_newlib(L, liblpp);
    return 1;
}