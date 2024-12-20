#!/usr/bin/env bash

UserHome="/home/$SUDO_USER"

if [ -f /usr/bin/librewolf ]; then
  return
fi

if [ ! -f /etc/apt/sources.list.d/extrepo_librewolf.sources ]; then
  sudo nala update
  sudo nala install extrepo -y
  sudo extrepo enable librewolf
fi

sudo nala update
sudo nala install librewolf -y

if [ ! -f $UserHome/.local/share/applications/start-Librewolf.desktop ]; then
  echo '[Desktop Entry]
  Encoding=UTF-8
  Version=1.0
  Type=Application
  NoDisplay=true
  Exec=/usr/bin/librewolf %u
  Name=Librewolf
  Comment=Custom definition for Librewolf
  MimeType=x-scheme-handler/unknown;x-scheme-handler/about;x-scheme-handler/https;x-scheme-handler/http;text/html;' > $UserHome/.local/share/applications/start-Librewolf.desktop
fi

if [ ! -l $UserHome/.librewolf/native-messaging-hosts ]; then
  ln -s $UserHome/.mozilla/native-messaging-hosts $UserHome/.librewolf/native-messaging-hosts
fi
