#!/bin/sh
cd `dirname $0`

git clone https://github.com/tpruvot/ccminer/ $HOME/ccminer
cd $HOME/ccminer
./build.sh
sudo make install
