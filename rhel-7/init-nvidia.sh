#!/bin/sh
cd `dirname $0`

yum install -y wget
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda-repo-rhel7-9-0-local-9.0.176-1.x86_64-rpm
rpm -i cuda-repo-rhel7-9-0-local-9.0.176-1.x86_64-rpm
yum clean all
yum install cuda
modprobe nvidia

git clone https://github.com/tpruvot/ccminer/ $HOME/ccminer
cd $HOME/ccminer
./build.sh
make install
