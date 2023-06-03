#!/usr/bin/env bash

cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget -y
wget https://github.com/mobilturka/mt-wallpapers/releases/download/current/mt-wallpapers_1.0_all.deb
wget https://github.com/troyeguo/koodo-reader/releases/download/v1.5.5/Koodo.Reader-1.5.5-amd64.deb
apt install -t yirmibir-backports linux-image-amd64 orchis-gtk-theme papirus-icon-theme -y


apt install ./*.deb -yq --allow-downgrades
