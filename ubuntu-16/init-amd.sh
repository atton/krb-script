#!/bin/sh
cd `dirname $0`

sudo apt-get -f install -y wget unar dpkg-dev autoconf automake make libcurl4-openssl-dev pkg-config libtool libncurses5-dev m4
sudo apt-get autoremove
sudo apt-get clean
sudo apt-get update
sudo apt-get -f install

wget --referer='https://www2.ati.com' https://www2.ati.com/drivers/linux/ubuntu/amdgpu-pro-17.40-492261.tar.xz
unar amdgpu-pro-17.40-492261.tar.xz
cd amdgpu-pro-17.40-492261/
sudo dpkg -i -R  .
sudo apt-get -f install
sudo dpkg -i -R  .
sudo apt-get -f install
sudo dpkg -i -R  .
sudo apt-get -f install
sudo dpkg -i -R  .
sudo apt-get -f install
sudo dpkg -i -R  .
sudo apt-get -f install


git clone https://github.com/genesismining/sgminer-gm
cd sgminer-gm
git checkout -f 5.5.5
git submodule init
git submodule update
autoreconf -i
CFLAGS="-O2 -march=native -std=gnu99" ./configure --without-curses
sudo make install
