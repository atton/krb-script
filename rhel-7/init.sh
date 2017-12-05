#!/bin/sh
cd `dirname $0`

yum install -y autoconf automake libcurl-devel git zsh gcc make powertop pciutils epel-release
chsh -s /bin/zsh $USER
git clone https://github.com/atton/dot_files $HOME/dot_files
cd $HOME/dot_files
./install.sh
