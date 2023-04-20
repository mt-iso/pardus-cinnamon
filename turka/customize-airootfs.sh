#!/usr/bin/env bash

cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget -y

wget https://ftp.mozilla.org/pub/firefox/releases/113.0b1/linux-x86_64/en-US/firefox-113.0b1.deb

apt install ./*.deb -yq --allow-downgrades
