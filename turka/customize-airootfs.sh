#!/usr/bin/env bash

cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget

### 17g installer
wget https://github.com/pardus-turka/17g-installer/releases/download/current/17g-installer_1.0_all.deb

## Mobilturka Wallpapers
wget https://github.com/mobilturka/mt-wallpapers/releases/download/current/mt-wallpapers_1.0_all.deb
wget https://github.com/muslimos/pardus-lightdm-greeter-blured/releases/download/current/pardus-lightdm-greeter_0.0.3_all.deb

apt install ./*.deb -yq --allow-downgrades
