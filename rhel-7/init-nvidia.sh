#!/bin/sh
cd `dirname $0`

yum install -y epel-release
yum install --enablerepo=epel -y wget kernel-tools yum-utils epel-release kernel-devel rpm-build wget git unzip libstdc++-static

wget https://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-repo-rhel7-8.0.61-1.x86_64.rpm
yum install -y cuda-repo-rhel7-8.0.61-1.x86_64.rpm
yum clean all
yum install -y cuda-8-0
rm cuda-repo-rhel7-8.0.61-1.x86_64.rpm

modprobe nvidia

wget https://github.com/xmrig/xmrig-nvidia/archive/v2.4.2.zip
unzip v2.4.2.zip
cd xmrig-nvidia-2.4.2
cmake3 . -DWITH_HTTPD=OFF
make
