#!/usr/bin/env bash

brunoInstall() {
  ./bruno.sh
}

mariadbClient() {
  sudo nala install mariadb-client
}

dbeaver() {
  ./dbeaver.sh
}

zohoMail() {
  ./zoho.sh
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
