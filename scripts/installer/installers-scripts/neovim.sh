#!/usr/bin/env bash

if [ ! -d "$HOME/Code/c/neovim" ]; then
  git clone -b v0.12.1 git@github.com:neovim/neovim.git $HOME/Code/c/neovim
fi

cd $HOME/Code/c/neovim

echo "neovim: installing dependencies"
sudo nala install cmake gettext lua5.1 liblua5.1-0-dev ninja-build ccache -y
echo "neovim: building"
sudo make CMAKE_BUILD_TYPE=Release
echo "neovim: building"
sudo make install
