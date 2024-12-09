#!/usr/bin/env bash

if [ -f /opt/Signal/signal-desktop ]; then
  return
fi

if [ ! -f /usr/share/keyrings/signal-desktop-keyring.gpg ]; then
  wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
  cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
  echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' | sudo tee /etc/apt/sources.list.d/signal-xenial.list
fi

sudo nala update
sudo nala install signal-desktop -y
