#!/bin/sh
cd `dirname $0`

yum install -y wget kernel-tools yum-utils epel-release kernel-devel rpm-build wget git

wget https://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-repo-rhel7-8.0.61-1.x86_64.rpm
yum install -y cuda-repo-rhel7-8.0.61-1.x86_64.rpm
yum clean all
yum install -y cuda-7-5
rm cuda-repo-rhel7-8.0.61-1.x86_64.rpm

modprobe nvidia

git clone https://github.com/tpruvot/ccminer
cd ccminer
git checkout -f 2.2.2-tpruvot
./build.sh
make
