#!/usr/bin/env bash

if [! -d "$HOME/Code/odin/odin" ]; then
  git clone git@github.com:odin-lang/odin.git $HOME/Code/odin/odin
fi

cd $HOME/Code/odin/odin

echo "odin: installing dependencies"
if [! -f "/usr/bin/llvm-as-20" ]; then
  wget https://apt.llvm.org/llvm.sh
  chmod +x llvm.sh
  sudo ./llvm.sh 20
  rm llvm.sh
  sudo nala install -y clang-20 clangd-20 clang
fi
echo "odin: building"
git switch master
git pull origin
git switch --detach dev-2025-11
sudo make CMAKE_BUILD_TYPE=Release
echo "odin: installing"
make release-native
odinPath=$(which odin)
if [[ -z "$odinPath"]]; then
   echo 'export PATH="/path/to/Odin/folder:$PATH"' >> ~/.bashrc
fi
