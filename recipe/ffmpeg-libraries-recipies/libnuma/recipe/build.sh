CFLAGS="-march=native -mtune=native"

export CFLAGS
export CXXFLAGS="${CFLAGS}"

autoreconf -fiv

./configure --prefix=${PREFIX} --disable-static

make -j ${CPU_COUNT} 
make install

