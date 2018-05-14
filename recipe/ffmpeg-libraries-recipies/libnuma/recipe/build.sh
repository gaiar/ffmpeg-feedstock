CFLAGS="-march=native -mtune=native"

export CFLAGS
export CXXFLAGS="${CFLAGS}"

chmod +x autogen.sh

./autogen.sh --prefix=${PREFIX}

make -j ${CPU_COUNT} 
make install PREFIX=${PREFIX}

