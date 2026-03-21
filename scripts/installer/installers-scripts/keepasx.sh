#!/usr/bin/env bash

if [ ! -d "$HOME/Code/cpp/keepassxc/" ]; then
  git clone git@github.com:keepassxreboot/keepassxc
  git checkout 2.7.12
fi

cd $HOME/Code/cpp/keepassxc

echo "keepassxc: installing dependencies"
sudo nala install cmake asciidoctor botan libbotan-2-19 libbotan-2-dev libqt5multimedia5 libqt5multimediawidgets5 libqt5multimediaquick5 qtmultimedia5-dev libqt5svg5-dev qttools5-dev libqt5svg5-dev libqt5x11extras5-dev libminizip-dev libpcsclite-dev libqrencode libqrencode-dev libargon2-dev qtbase5-private-dev -y
echo "keepassxc: building"
mkdir -p build
cd build
cmake -DWITH_XC_ALL=ON -DWITH_TESTS=OFF -DCMAKE_BUILD_TYPE=Release ..
make -j8
echo "keepassxc: installing"
sudo make install
