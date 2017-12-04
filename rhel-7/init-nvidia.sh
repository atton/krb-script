#!/bin/sh
cd `dirname $0`

yum install -y wget kernel-tools yum-utils epel-release kernel-devel rpm-build wget git

wget http://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-repo-rhel7-9.0.176-1.x86_64.rpm
rpm -i cuda-repo-rhel7-9.0.176-1.x86_64.rpm
yum clean all
yum install -y cuda
# wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run
# sh NVIDIA-Linux-x86_64-384.98.run # tui
rm cuda-repo-rhel7-9.0.176-1.x86_64.rpm

modprobe nvidia

git clone https://github.com/tpruvot/ccminer
cd ccminer
git checkout -f 2.2.2-tpruvot
