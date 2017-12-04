#!/bin/sh
cd `dirname $0`

yum install -y epel-release
yum install --enablerepo=epel -y wget kernel-tools yum-utils epel-release kernel-devel rpm-build wget git libtool-ltdl-devel autoconf-archive libtool opencl-headers unzip

wget https://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-repo-rhel7-8.0.61-1.x86_64.rpm
yum install -y cuda-repo-rhel7-8.0.61-1.x86_64.rpm
yum clean all
yum install -y cuda-8-0
rm cuda-repo-rhel7-8.0.61-1.x86_64.rpm

wget http://registrationcenter-download.intel.com/akdlm/irc_nas/11396/SRB5.0_linux64.zip
unzip SRB5.0_linux64.zip
yum install -y intel-opencl-r5.0-63503.x86_64.rpm
yum install -y intel-opencl-devel-r5.0-63503.x86_64.rpm

modprobe nvidia

git clone https://github.com/nicehash/sgminer-gm
cd sgminer-gm
git checkout -f 5.5.5-8
git submodule init
git submodule update
autoreconf -i
CFLAGS="-O2 -Wall -march=native -std=gnu99" ./configure --without-curses
make install
