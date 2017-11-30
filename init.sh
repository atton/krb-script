#!/bin/sh
cd `dirname $0`

sudo yum install -y autoconf automake libcurl-devel git zsh gcc make
git clone https://github.com/atton/dot_files $HOME/dot_files
cd $HOME/dot_files
./install.sh
cd $HOME
git clone https://github.com/OhGodAPet/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
sudo make install
