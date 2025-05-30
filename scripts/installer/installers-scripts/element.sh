#!/usr/bin/env bash

if [ -f /usr/bin/element-desktop ]; then
  exit
fi

if [ ! -f /etc/apt/sources.list.d/element-io.list ]; then
  sudo wget -O /usr/share/keyrings/element-io-archive-keyring.gpg https://packages.element.io/debian/element-io-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/element-io-archive-keyring.gpg] https://packages.element.io/debian/ default main" | sudo tee /etc/apt/sources.list.d/element-io.list
fi

sudo nala update
sudo nala install element-desktop -y
