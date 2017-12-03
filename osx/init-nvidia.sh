#!/bin/sh
cd `dirname $0`

git clone https://github.com/tpruvot/ccminer
cd ccminer
./build.sh
#sudo make install
