#!/bin/sh
cd `dirname $0`

# git clone https://github.com/tpruvot/ccminer/ $HOME/ccminer
# sudo yum install -y automake openssl-devel libcurl-devel
cd $HOME/ccminer
./build.sh
sudo make install
