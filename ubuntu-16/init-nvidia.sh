#!/bin/sh
cd `dirname $0`

apt update -y
apt upgrade -y
apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
apt update -y
apt install -y cuda cuda-drivers unzip cmake

modprobe nvidia

wget https://github.com/xmrig/xmrig-nvidia/archive/v2.4.2.zip
unzip v2.4.2.zip
cd xmrig-nvidia-2.4.2
cmake . -DWITH_HTTPD=OFF
make
cp xmrig-nvidia /usr/local/bin
rm ../v2.4.2.zip
