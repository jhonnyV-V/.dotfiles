#!/usr/bin/env bash

if [ -f /usr/local/bin/nvim ]; then
  exit
fi

UserHome=$HOME
UserConfig="$UserHome/.config"

if [! -d "$UserHome/Code/c/neovim" ]; then
  git clone -b v0.11.0 git@github.com:neovim/neovim.git $UserHome/Code/c/neovim
fi

cd $UserHome/Code/c/neovim

echo "neovim: installing dependencies"
sudo nala install cmake gettext lua5.1 liblua5.1-0-dev ninja-build ccache -y
echo "neovim: building"
sudo make CMAKE_BUILD_TYPE=Release
echo "neovim: building"
sudo make install
