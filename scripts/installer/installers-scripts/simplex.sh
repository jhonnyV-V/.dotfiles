#!/usr/bin/env bash

if [ -f /opt/simplex/bin/simplex ]; then
  exit
fi

UserHome=$HOME

curl -L https://github.com/simplex-chat/simplex-chat/releases/latest/download/simplex-desktop-ubuntu-22_04-x86_64.deb -o $UserHome/simpex-desktop-ubuntu-22_04-x86_64.deb

sudo nala update
sudo nala install $UserHome/simpex-desktop-ubuntu-22_04-x86_64.deb -y

rm $UserHome/simpex-desktop-ubuntu-22_04-x86_64.deb
