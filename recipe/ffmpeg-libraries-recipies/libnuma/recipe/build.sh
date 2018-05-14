CFLAGS="-march=native -mtune=native"

export CFLAGS
export CXXFLAGS="${CFLAGS}"

autoreconf -fiv

make -j ${CPU_COUNT} 
make install PREFIX=$PREFIX

