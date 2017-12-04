#!/bin/sh
cd `dirname $0`

sudo apt update -y
sudo apt-get install -y
sudo apt-get install -y ocl-icd-opencl-dev git zsh powertop autoconf automake libtool build-essential

wget https://github.com/genesismining/sgminer-gm/releases/download/5.5.5/sgminer_ubuntu64
sudo mv ./sgminer_ubuntu64 /usr/local/bin/sgminer
