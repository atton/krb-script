#!/bin/sh
cd `dirname $0`

apt update -y
apt upgrade -y
apt-get install -y wget libcurl4-openssl-dev libuv1-dev
apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
apt update -y
apt-get install -y cuda cuda-drivers zip cmake
rm cuda-repo-ubuntu1604_9.0.176-1_amd64.deb

modprobe nvidia

wget https://github.com/xmrig/xmrig-nvidia/archive/v2.4.2.zip
unzip v2.4.2.zip
cd xmrig-nvidia-2.4.2
cmake . -DWITH_HTTPD=OFF
make
cp xmrig-nvidia /usr/local/bin
rm ../v2.4.2.zip
