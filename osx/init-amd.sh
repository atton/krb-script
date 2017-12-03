#!/bin/sh
cd `dirname $0`

git clone https://github.com/xbbricker/cpuminer-multi-opencl
cd cpuminer-multi-opencl
./autogen.sh
CFLAGS="-march=native" ./configure
make
