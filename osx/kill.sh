#!/bin/sh
cd `dirname $0`
pgrep -i miner | xargs kill -9
