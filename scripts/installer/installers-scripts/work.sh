#!/usr/bin/env bash

brunoInstall() {
  if [ -f /usr/bin/bruno ]; then
    return
  fi

  sudo mkdir -p /etc/apt/keyrings 
  sudo gpg --no-default-keyring --keyring /etc/apt/keyrings/bruno.gpg --keyserver keyserver.ubuntu.com --recv-keys 9FA6017ECABE0266 

  echo "deb [signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" | sudo tee /etc/apt/sources.list.d/bruno.list 

  sudo nala update 
  sudo nala install bruno
}

mariadbClient() {
  sudo nala install mariadb-client
}

dbeaver() {
  wget -O $HOME/Downloads/dbeaver-ce_latest_amd64.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
  sudo nala update
  sudo nala install $HOME/Downloads/dbeaver-ce_latest_amd64.deb -y
  rm $HOME/Downloads/dbeaver-ce_latest_amd64.deb
}

zohoMail() {
  if [ -f /usr/local/bin/zoho-mail-desktop ]; then
    return 
  fi

  wget -O $HOME/Downloads/zoho-mail-desktop-lite-installer-x64-v1.6.5.deb https://downloads.zohocdn.com/zmail-desktop/linux/zoho-mail-desktop-lite-installer-x64-v1.6.5.deb 
  sudo nala update
  sudo nala install $HOME/Downloads/zoho-mail-desktop-lite-installer-x64-v1.6.5.deb -y
  rm $HOME/Downloads/zoho-mail-desktop-lite-installer-x64-v1.6.5.deb 
}

teams() {
   flatpak install --user flathub com.github.IsmaelMartinez.teams_for_linux
}

mattermost() {
  flatpak install --user com.mattermost.Desktop
}

brunoInstall
mariadbClient
dbeaver
zohoMail
teams
mattermost
