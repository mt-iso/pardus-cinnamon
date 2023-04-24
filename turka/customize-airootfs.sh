#!/usr/bin/env bash

#cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget -y


#apt install ./*.deb -yq --allow-downgrades
