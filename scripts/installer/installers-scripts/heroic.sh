#!/usr/bin/env bash

UserHome=$HOME

if [ -f /usr/bin/heroic ]; then
  exit
fi

wget -O $UserHome/heroic_2.27.0_amd64.deb https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.17.0/heroic_2.17.0_amd64.deb
sudo nala update
sudo nala install $UserHome/heroic_2.17.0_amd64.deb -y
rm $UserHome/heroic_2.17.0_amd64.deb
