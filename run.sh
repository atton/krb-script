#!/bin/sh
cd `dirname $0`

sudo pkill minerd
sudo /usr/local/bin/minerd -B -q -a cryptonight -o stratum+tcp://krb.crypto-coins.club:5555 -u Ka96n4BKPF6Hi1fptzLr2uXvXaZRunoEzYnsmfgbT7A6eKkubdpBJCxARqjC3QVpZEJ9AANwWCnHr1uvmcYcdwtG81qg7DD -p x -t 1 >& /dev/null
