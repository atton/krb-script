#!/bin/sh
cd `dirname $0`

sudo apt-get install -y autoconf automake libcurl-devel git zsh gcc make powertop
git clone https://github.com/OhGodAPet/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
sudo make install
