#!/usr/bin/env bash

if [ -f /usr/bin/keepassxc ]; then
  exit
fi

if [ ! -f /etc/apt/sources.list.d/phoerious-ubuntu-keepassxc-jammy.list ]; then
  sudo add-apt-repository ppa:phoerious/keepassxc
fi

sudo nala update
sudo nala install keepassxc -y
