#!/usr/bin/env bash

UserHome="/home/$SUDO_USER"
BaseGosPath="$UserHome/.gvm/gos"
GVM="$UserHome/.gvm/bin/gvm"
echo "user home is $UserHome"
if [ ! -d $UserHome/.gvm ]; then
  sudo nala update
  sudo nala install bison

  sudo -u $SUDO_USER "bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)"
fi

sudo -u $SUDO_USER ./$GVM install go1.4 -B
sudo -u $SUDO_USER ./$GVM use go1.4
GoRoot="$BaseGosPath/go1.4"
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot ./$GVM install go1.17.13
sudo -u $SUDO_USER ./$GVM use go1.17.13
GoRoot="$BaseGosPath/go1.17.13"
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot ./$GVM install go1.20
sudo -u $SUDO_USER ./$GVM use go1.20
GoRoot="$BaseGosPath/go1.20"
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot ./$GVM install go1.23.1
sudo -u $SUDO_USER ./$GVM use go1.23.1
GoRoot="$BaseGosPath/go1.23.1"

sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot go install github.com/air-verse/air@latest

sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot go install github.com/charmbracelet/vhs@latest
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot go install github.com/charmbracelet/freeze@latest
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot go install -ldflags="-s -w" -v github.com/jesusprubio/up@latest
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot go install github.com/jesseduffield/lazydocker@latest
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot go install github.com/jesseduffield/lazygit@latest
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot go install github.com/a-h/templ/cmd/templ@latest
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot go install github.com/eliben/static-server@latest
sudo -u $SUDO_USER GOROOT_BOOTSTRAP=$GoRoot go telemetry on
