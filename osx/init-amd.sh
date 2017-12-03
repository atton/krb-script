#!/bin/sh
cd `dirname $0`

brew install libtool curl pkg-config unar wget
wget https://github.com/sgminer-dev/sgminer/archive/5.1.1.zip
unar 5.1.1.zip
rm 5.1.1.zip
cd sgminer-5.1.1
git submodule init
git submodule update
autoreconf -i
CFLAGS="-O2 -Wall -march=native -std=gnu99" ./configure --without-curses
make
