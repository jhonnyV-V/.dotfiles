#!/usr/bin/env bash

UserHome=$HOME

if [ -f /usr/bin/obsidian ]; then
  exit
fi

wget -O $UserHome/obsidian_1.8.10_amd64.deb https://github.com/obsidianmd/obsidian-releases/releases/download/v1.8.10/obsidian_1.8.10_amd64.deb
sudo nala update
sudo nala install $UserHome/obsidian_1.8.10_amd64.deb -y
rm $UserHome/obsidian_1.8.10_amd64.deb
