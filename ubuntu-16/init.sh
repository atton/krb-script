#!/bin/sh
cd `dirname $0`

sudo apt-get update
sudo apt-get install -y git zsh powertop vim libcurl3 pciutils automake autoconf make gcc g++ unar
sudo chsh -s /bin/zsh $USER
git clone https://github.com/atton/dot_files $HOME/dot_files
cd $HOME/dot_files
./install.sh
