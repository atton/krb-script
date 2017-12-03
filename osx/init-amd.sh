#!/bin/sh
cd `dirname $0`

brew install libtool curl pkg-config unar wget
wget https://github.com/sgminer-dev/sgminer/archive/5.1.1.zip
unar 5.1.1.zip
cd sgminer-5.1.1
autoreconf -i
CFLAGS="-O2 -Wall -march=native -std=gnu99" ./configure --without-curses 
make
