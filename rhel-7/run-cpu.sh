#!/bin/zsh
cd `dirname $0`

# please tune thread number (-t option)
sudo pkill minerd
sudo powertop --auto-tune
sudo /usr/local/bin/minerd -B -q -a cryptonight -o stratum+tcp://krb.crypto-coins.club:6666 -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x -t 4 >& /dev/null &
disown $1
