#!/usr/bin/env bash

if [ -f /usr/bin/obs ]; then
  return
fi

sudo add-apt-repository ppa:obsproject/obs-studio
sudo nala update
sudo nala install obs-studio
