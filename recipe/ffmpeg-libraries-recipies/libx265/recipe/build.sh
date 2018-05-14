#!/bin/bash
mkdir -vp ${PREFIX}/bin


mkdir build
cd build

cmake -G "Unix Makefiles" -DENABLE_LIBNUMA=ON -DENABLE_PIC=ON -DNATIVE_BUILD=ON -DENABLE_SHARED=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX ..
#make -j ${CPU_COUNT} 
make install PREFIX=${PREFIX}