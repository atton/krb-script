#!/bin/sh
cd `dirname $0`

apt update -y
apt-get install -y
apt-get install -y ocl-icd-opencl-dev git zsh powertop autoconf automake libtool build-essential

wget https://github.com/genesismining/sgminer-gm/releases/download/5.5.5/sgminer_ubuntu64
mv ./sgminer_ubuntu64 /usr/local/bin/sgminer
