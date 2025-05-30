#!/usr/bin/env bash

if [ -f /usr/bin/youtube-music ]; then
  exit
fi

UserHome=$HOME
UserConfig="$UserHome/.config"

wget -O $UserHome/Downloads/youtube-music.deb https://github.com/th-ch/youtube-music/releases/download/v3.9.0/youtube-music_3.9.0_amd64.deb
cd $UserHome/Downloads
sudo nala install youtube-music.deb -y
rm youtube-music.deb
