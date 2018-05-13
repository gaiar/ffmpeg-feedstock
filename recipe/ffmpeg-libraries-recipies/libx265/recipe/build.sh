#!/bin/bash

mkdir -vp ${PREFIX}/bin

CFLAGS="-march=native -mtune=native"

export CFLAGS
export CXXLAGS="${CFLAGS}"

chmod +x configure
./configure \
        --enable-pic \
        --enable-shared \
        --enable-static \
        --prefix=${PREFIX}

make -j${CPU_COUNT}
make install -j${CPU_COUNT}


if cd x265 2> /dev/null; then hg pull && hg update; else hg clone https://bitbucket.org/multicoreware/x265; fi && \
cd x265/build/linux && \
PATH="$HOME/bin:$PATH" cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$HOME/ffmpeg_build" -DENABLE_SHARED=off ../../source && \
PATH="$HOME/bin:$PATH" make -j4 && \
make install