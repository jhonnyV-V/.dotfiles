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
   ./teams.sh
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
