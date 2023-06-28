#!/usr/bin/env bash

cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
wget http://ftp.debian.org/debian/pool/main/l/linux-signed-amd64/linux-image-6.3.0-1-amd64_6.3.7-1_amd64.deb
wget https://github.com/mobilturka/mt-wallpapers/releases/download/current/mt-wallpapers_1.0_all.deb
wget https://github.com/troyeguo/koodo-reader/releases/download/v1.5.6/Koodo.Reader-1.5.6-amd64.deb
apt install -t yirmibir-backports orchis-gtk-theme papirus-icon-theme -y

apt install ./*.deb -yq --allow-downgrades
