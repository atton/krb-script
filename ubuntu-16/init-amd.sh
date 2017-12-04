#!/bin/sh
cd `dirname $0`

sudo apt update -y
sudo apt-get install -y
sudo apt-get install -y ocl-icd-opencl-dev git zsh powertop autoconf automake libtool build-essential

git clone https://github.com/genesismining/sgminer-gm
cd sgminer-gm
git checkout -f 5.5.5
git submodule init
git submodule update
autoreconf -i
CFLAGS="-O2 -march=native -std=gnu99" ./configure --without-curses
sudo make install
