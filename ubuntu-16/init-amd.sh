#!/bin/sh
cd `dirname $0`

sudo apt-get install -y wget unar
wget --referer='https://www2.ati.com' https://www2.ati.com/drivers/linux/ubuntu/amdgpu-pro-17.40-492261.tar.xz
unar amdgpu-pro-17.40-492261.tar.xz
cd amdgpu-pro-17.40-492261/
ls *amd64*deb | xargs sudo dpkg -i 
ls *amd64*deb | xargs sudo dpkg -i 
ls *amd64*deb | xargs sudo dpkg -i 
ls *amd64*deb | xargs sudo dpkg -i 
ls *amd64*deb | xargs sudo dpkg -i 
ls *amd64*deb | xargs sudo dpkg -i 
ls *amd64*deb | xargs sudo dpkg -i 
ls *amd64*deb | xargs sudo dpkg -i 


git clone https://github.com/genesismining/sgminer-gm
cd sgminer-gm
git checkout -f 5.5.5
git submodule init
git submodule update
autoreconf -i
CFLAGS="-O2 -march=native -std=gnu99" ./configure --without-curses
sudo make install
