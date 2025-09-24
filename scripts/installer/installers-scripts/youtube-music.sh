#!/usr/bin/env bash

wget -O $HOME/Downloads/youtube-music.deb https://github.com/th-ch/youtube-music/releases/download/v3.11.0/youtube-music_3.11.0_amd64.deb
cd $HOME/Downloads
sudo nala install youtube-music.deb -y
rm youtube-music.deb
