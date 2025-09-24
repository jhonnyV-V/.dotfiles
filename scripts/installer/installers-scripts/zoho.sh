#!/usr/bin/env bash

if [ -f /usr/local/bin/zoho-mail-desktop ]; then
  return 
fi

wget -O $HOME/Downloads/zoho-mail-desktop-lite-installer-x64-v1.6.5.deb https://downloads.zohocdn.com/zmail-desktop/linux/zoho-mail-desktop-lite-installer-x64-v1.6.5.deb 
sudo nala update
sudo nala install $HOME/Downloads/zoho-mail-desktop-lite-installer-x64-v1.6.5.deb -y
rm $HOME/Downloads/zoho-mail-desktop-lite-installer-x64-v1.6.5.deb 
