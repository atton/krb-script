#!/bin/sh
cd `dirname $0`

yum install -y wget unzip xorg-x11-drivers openssl-devel cmake3 gcc-c++
wget --referer='https://www2.ati.com' https://www2.ati.com/drivers/linux-amd-14.41rc1-opencl2-sep19.zip
unzip linux-amd-14.41rc1-opencl2-sep19.zip
sh fglrx-14.41
sh amd-driver-installer-14.41-x86.x86_64.run --extract hoge
cd hoge
./ati-installer.sh  -- --buildpkg RedHat/RHEL7_64a --NoXServer
yum install -y ../fglrx64_p_i_c-14.41-1.x86_64.rpm
modprobe fglrx

wget https://github.com/genesismining/sgminer-gm/releases/download/5.5.5/sgminer_ubuntu64
mv ./sgminer_ubuntu64 /usr/local/bin/sgminer
chmod 755 /usr/local/bin/sgminer
