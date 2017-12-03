#!/bin/sh
cd `dirname $0`

git clone https://github.com/sgminer-dev/sgminer
cd sgminer
git checkout -f 5.1.1
git submodule init
git submodule update
autoreconf -i
CFLAGS="-O2 -Wall -march=native -std=gnu99" ./configure
make
