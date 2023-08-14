local lib = require "liblpp"

address = 0

value_1 = lib.peek(address)
print(value_1)

err = lib.poke(address, value_1 + 1)
value_2 = lib.peek(address)
print(value_2)

lib.poke(address, value_1)
value_3 = lib.peek(address)
print(value_3)