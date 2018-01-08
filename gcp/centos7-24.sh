#!/bin/bash
sudo yum install -y autoconf automake libcurl-devel git zsh gcc make
git clone https://github.com/OhGodAPet/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
sudo make install
sudo /usr/local/bin/minerd -B -q -a cryptonight -o stratum+tcp://pool.krbpool.com:33338 -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x -t 24 >& /dev/null
disown $1
