#!/bin/sh
cd `dirname $0`

brew install unar
wget 'http://www.spaceman.ca/sgminer/download.php?Ver=latest&Type=Miner' -O sgminer.zip
unar sgminer.zip
