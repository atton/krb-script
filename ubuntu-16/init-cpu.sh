#!/bin/sh
cd `dirname $0`

sudo apt-get update
sudo apt-get install -y autoconf automake libcurl4-openssl-dev git zsh gcc make powertop
git clone https://github.com/OhGodAPet/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
sudo make install
