#!/usr/bin/env bash

UserHome="/home/$SUDO_USER"
if [ -d $UserHome/.cargo]; then
  return
fi

sudo -u $SUDO_USER -c "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
sudo -u $SUDO_USER -c "cargo install exa yazi tokei airshipper uv"
