#!/usr/bin/env bash

wget -O $HOME/Downloads/pear-desktop.deb https://github.com/pear-devs/pear-desktop/releases/download/v3.12.0/youtube-music_3.12.0_amd64.deb
cd $HOME/Downloads
sudo nala install pear-desktop.deb -y
rm pear-desktop.deb
