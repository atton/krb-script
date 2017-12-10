#!/bin/sh
cd `dirname $0`

sudo apt update
sudo apt-get upgrade -y
sudo apt-get install -y git zsh powertop vim pciutils automake autoconf make gcc g++ unar
sudo modprobe fglrx
sudo chsh -s /bin/zsh $USER
git clone https://github.com/atton/dot_files $HOME/dot_files
cd $HOME/dot_files
./install.sh
