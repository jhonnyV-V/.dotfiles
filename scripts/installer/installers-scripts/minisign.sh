#!/usr/bin/env bash

if [ ! -d $HOME/Code/c/libsodium-stable ]; then
  wget -O $HOME/Downloads/libsodium.tar.gz https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
  tar -xf $HOME/Downloads/libsodium.tar.gz --directory $HOME/Code/c
  current=$(pwd)
  rm $HOME/Downloads/libsodium.tar.gz
  cd $HOME/Code/c/libsodium-stable
  ./configure
  make
  make check
  sudo make install
  cd $current
fi

if [ ! -d /usr/local/bin/minisign ]; then
  wget -O $HOME/Downloads/minisign-0.12-linux.tar.gz https://github.com/jedisct1/minisign/releases/download/0.12/minisign-0.12-linux.tar.gz
  tar -xf $HOME/Downloads/minisign-0.12-linux.tar.gz --directory=$HOME/Downloads
  current=$(pwd)
  rm $HOME/Downloads/minisign-0.12-linux.tar.gz
  cd $HOME/Downloads/minisign-linux/x86_64
  
  sudo mv ./minisign /usr/local/bin/minisign
  cd $current
  rm -rf $HOME/Downloads/minisign-linux/
fi
