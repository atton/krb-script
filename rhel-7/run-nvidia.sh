#!/bin/zsh
cd `dirname $0`

pkill xmrig-nvidia
/usr/local/bin/xmrig-nvidia -o stratum+tcp://pool.krbpool.com:33338 -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x >& /dev/null &
