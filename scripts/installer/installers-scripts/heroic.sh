#!/usr/bin/env bash

UserHome="/home/$SUDO_USER"

if [ -f /usr/bin/heroic ]; then
  return
fi

sudo wget -O $UserHome/heroic_2.15.2_amd64.deb https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.15.2/heroic_2.15.2_amd64.deb
sudo nala update
sudo nala install $UserHome/heroic_2.15.2_amd64.deb -y
sudo rm $UserHome/heroic_2.15.2_amd64.deb
