#!/bin/bash
mkdir -vp ${PREFIX}/bin

cmake -G "Unix Makefiles" -DENABLE_LIBNUMA=ON -DENABLE_PIC=ON -DNATIVE_BUILD=ON -DENABLE_SHARED=ON ../source
make -j ${CPU_COUNT} 
make install PREFIX=${PREFIX}