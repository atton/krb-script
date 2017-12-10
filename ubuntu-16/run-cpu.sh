#!/bin/zsh
cd `dirname $0`

pkill minerd
/usr/local/bin/minerd -t 4 -B -o stratum+tcp://krb.crypto-coins.club:6666 -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x >& /dev/null
