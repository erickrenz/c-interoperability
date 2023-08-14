all:
	gcc -I/usr/include/lua5.4 -DLUA_USERCONFIG=\"lpp.h\" lpp.c -c -fPIC
	gcc lpp.o -shared -o liblpp.so

clean:
	rm -rf lpp.o liblpp.so