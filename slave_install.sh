#!/bin/sh

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y build-essential salt-minion ices2 libusb-1.0-0-dev librtlsdr-dev libasound2-dev libalsaplayer-dev autossh cmake vim

# Install RTL SDR kernel module blacklist.
sudo cp ./blacklist.conf /etc/modprobe.d/

# Set up source directories.
mkdir ~/src
cd ~/src

# Install SoftFM
git clone https://github.com/divyekapoor/SoftFM.git
cd SoftFM
mkdir build
cd build
cmake ..
make -j 4

