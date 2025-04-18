#!/usr/bin/env bash

if [ -f /usr/bin/youtube-music ]; then
  return
fi

UserHome="/home/$SUDO_USER"
UserConfig="$UserHome/.config"

sudo wget -O $UserHome/Downloads/youtube-music.deb https://github.com/th-ch/youtube-music/releases/download/v3.7.5/youtube-music_3.7.5_amd64.deb
cd $UserHome/Downloads
sudo nala install youtube-music.deb -y
rm youtube-music.deb
