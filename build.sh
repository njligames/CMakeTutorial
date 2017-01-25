#!/bin/sh

rm -rf .build
mkdir -p .build
cd .build

cmake .. -DCMAKE_INSTALL_PREFIX=./bin
make -j4
make install

ctest ..

cpack .. --config CPackConfig.cmake
cpack .. --config CPackSourceConfig.cmake
