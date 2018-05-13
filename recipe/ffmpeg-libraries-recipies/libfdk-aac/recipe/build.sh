#!/bin/bash

CFLAGS="-march=native -mtune=native"

export CFLAGS
export CXXLAGS="${CFLAGS}"

#chmod +x configure
autoreconf -fiv
./configure --prefix=${PREFIX} --enable-shared --enable-static

make -j${CPU_COUNT}
make install -j${CPU_COUNT}