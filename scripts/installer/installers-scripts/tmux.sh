#!/usr/bin/env bash

UserHome=$HOME

if [ -f /usr/local/bin/tmux ]; then
  exit
fi

if [ ! -d "$UserHome/Code/tools/tmux" ]; then
  curl -L https://github.com/tmux/tmux/releases/download/3.4/tmux-3.4.tar.gz -o $UserHome/Code/tools/tmux-3.4.tar.gz
  cd $UserHome/Code/tools/
  tar xf tmux-3.4.tar.gz
  rm tmux-3.4.tar.gz
  mv tmux-3.4 tmux
fi

cd $UserHome/Code/tools/tmux

echo "tmux: installing dependencies"
sudo nala install libevent-dev ncurses-dev build-essential bison pkg-config -y
echo "tmux: building"
./configure
make
echo "tmux: building"
sudo make install
