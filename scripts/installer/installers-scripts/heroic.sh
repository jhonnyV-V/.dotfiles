#!/usr/bin/env bash


#if [ -f /usr/bin/heroic ]; then
#  exit
#fi

wget -O $HOME/heroic_2.27.2_amd64.deb https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.17.2/Heroic-2.17.2-linux-amd64.deb
sudo nala update
sudo nala install $HOME/heroic_2.27.2_amd64.deb -y
rm $HOME/heroic_2.27.2_amd64.deb
