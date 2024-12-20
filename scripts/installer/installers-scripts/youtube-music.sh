#!/usr/bin/env bash

if [ -f /usr/bin/youtube-music ]; then
  return
fi

UserHome="/home/$SUDO_USER"
UserConfig="$UserHome/.config"

sudo wget -O $UserHome/Downloads/youtube-music.deb https://github.com/FoxDavoid/YT-Desktop-App/releases/download/Latest/youtube-music.deb
cd $UserHome/Downloads
sudo nala install youtube-music.deb -y
rm youtube-music.deb
