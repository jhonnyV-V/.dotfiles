#!/usr/bin/env bash

UserHome=$HOME
if [ -d $UserHome/.cargo]; then
  exit
fi

sudo curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install eza yazi tokei airshipper uv bat tplay hyperfine delta dysk caligula pastel xleak
