#!/usr/bin/env bash

if [ ! -d $HOME/.zig/zig-x86_64-linux-0.14.1 ]; then
  if [ ! -d $HOME/.zig/ ]; then
    mkdir $HOME/.zig
  fi
  wget -O $HOME/Downloads/zig-x86_64-linux-0.14.1.tar.xz https://ziglang.org/download/0.14.1/zig-x86_64-linux-0.14.1.tar.xz
  tar -xf $HOME/Downloads/zig-x86_64-linux-0.14.1.tar.xz --directory $HOME/.zig
  rm $HOME/Downloads/zig-x86_64-linux-0.14.1.tar.xz
  echo 'export PATH=$HOME/.zig/zig-x86_64-linux-0.14.1:$PATH' >> $HOME/.bashrc
  source $HOME/.bashrc
fi
