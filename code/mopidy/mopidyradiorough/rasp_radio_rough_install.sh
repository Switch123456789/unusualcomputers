#!/bin/sh


## Mopidy installation first
## copied from https://docs.mopidy.com/en/latest/installation/debian/

# 1. Add the archive’s GPG key:
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -

# 2. Add the APT repo to your package sources:
sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/jessie.list

# 3. Install Mopidy and all dependencies:
sudo apt-get update
sudo apt-get install mopidy

## Then rough radio
sudo pip install Mopidy-Radio-Rough

## Setup the start menu
sudo cp /usr/lib/python2.7/dist-packages/mopidy_radio_rough/ucc.png  /usr/share/pixmaps/ucc.gif
sudo cp /usr/lib/python2.7/dist-packages/mopidy_radio_rough/radio_rough.desktop  /usr/share/applications/radio_rough.desktop

echo radio rough is installed, run it from the start menu or type sudo mopidy on the command line