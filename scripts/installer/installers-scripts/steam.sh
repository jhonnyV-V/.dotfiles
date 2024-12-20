#!/usr/bin/env bash

if [ -f /usr/bin/steam ]; then
  return
fi

if [ ! -f /etc/apt/sources.list.d/steam-stable.list ]; then
  sudo add-apt-repository ppa:steam/steam
fi

sudo nala update
sudo nala install steam -y
