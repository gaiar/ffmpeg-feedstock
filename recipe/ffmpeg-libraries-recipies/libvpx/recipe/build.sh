#!/bin/bash

mkdir -vp ${PREFIX}/bin

CFLAGS="-march=native -mtune=native"

export CFLAGS
export CXXLAGS="${CFLAGS}"

chmod +x configure

./configure --prefix=${PREFIX} --disable-examples --disable-unit-tests --enable-vp9-highbitdepth --as=yasm

make -j${CPU_COUNT}
make install -j${CPU_COUNT}