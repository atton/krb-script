#!/bin/sh
cd `dirname $0`

sudo yum install -y autoconf automake libcurl-devel git zsh gcc make powertop
git clone https://github.com/atton/dot_files $HOME/dot_files
cd $HOME/dot_files
./install.sh
sudo powertop --auto-tune
