#!/bin/sh
cd `dirname $0`

sudo yum install -y wget kernel-tools yum-utils epel-release kernel-devel unzip rpm-build
sudo yum --enablerepo=epel install -y dkms
wget --referer='https://www2.ati.com' https://www2.ati.com/drivers/linux/amd-catalyst-15.9-linux-installer-15.201.1151-x86.x86_64.zip
unzip amd-catalyst-15.9-linux-installer-15.201.1151-x86.x86_64.zip
sh AMD-Catalyst-15.9-Linux-installer-15.201.1151-x86.x86_64.run --extract hoge
cd hoge
sudo sh ati-installer.sh -- --buildpkg RedHat/RHEL7_64a --NoXServer
cd ..
sudo rpm -i fglrx64_p_i_c-15.201.1151-1.x86_64.rpm
