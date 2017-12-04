#!/bin/sh
cd `dirname $0`

yum install -y wget kernel-tools yum-utils epel-release kernel-devel rpm-build wget git

wget http://us.download.nvidia.com/XFree86/Linux-x86_64/384.98/NVIDIA-Linux-x86_64-384.98.run
# sh NVIDIA-Linux-x86_64-384.98.run # tui

wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda-repo-rhel7-9-0-local-9.0.176-1.x86_64-rpm
rpm -i cuda-repo-rhel7-9-0-local-9.0.176-1.x86_64-rpm
yum clean all
yum install cuda
modprobe nvidia

wget https://github.com/genesismining/sgminer-gm/releases/download/5.5.5/sgminer_ubuntu64 -O /usr/local/bin/sgminer
chmod 755 /usr/local/bin/sgminer
