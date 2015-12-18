#!/bin/sh
sudo taskset -c 2,3 nice -n -20 ~/src/SoftFM/build/softfm -f 94.9e6 -M -s 240000 2> /dev/null
