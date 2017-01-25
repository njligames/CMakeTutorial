#!/bin/sh

rm -rf .build
mkdir -p .build
cd .build

cmake .. -DCMAKE_INSTALL_PREFIX=./bin
make -j4
make install

# This is for the dashboard.. the url is blank?
#ctest . -D Experimental Test

ctest .. -D 

cpack .. --config CPackConfig.cmake
cpack .. --config CPackSourceConfig.cmake
