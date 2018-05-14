#!/bin/bash
mkdir -vp ${PREFIX}/bin


#mkdir -vp build
#cd build
cd build/arm-linux
cmake -G "Unix Makefiles" -DENABLE_LIBNUMA=OFF -DENABLE_PIC=ON -DNATIVE_BUILD=ON -DENABLE_SHARED=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX ../../source
make -j ${CPU_COUNT} 
make install PREFIX=${PREFIX}