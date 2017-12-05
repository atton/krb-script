#!/bin/sh
cd `dirname $0`
pgrep -i xmrig | xargs kill -9
pgrep -i miner | xargs kill -9
