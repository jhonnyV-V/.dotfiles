#!/usr/bin/env bash

wget -O $HOME/Downloads/dbeaver-ce_latest_amd64.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo nala update
sudo nala install $HOME/Downloads/dbeaver-ce_latest_amd64.deb -y
rm $HOME/Downloads/dbeaver-ce_latest_amd64.deb
