#!/bin/sh
cd `dirname $0`

sudo yum install -y wget kernel-tools yum-utils
# wget --referer='https://www2.ati.com' https://www2.ati.com/drivers/linux/rhel7/amdgpu-pro-17.30-458935.tar.xz
tar Jxfv amdgpu-pro-17.30-458935.tar.xz
cd amdgpu-pro-17.30-458935
./amdgpu-pro-install
