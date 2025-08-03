#!/usr/bin/env bash

if [ -f /usr/local/bin/identify ]; then
  exit
fi

if [! -d "$HOME/Code/bash" ]; then
  mkdir $HOME/Code/bash
fi

if [! -d "$HOME/Code/bash/imei" ]; then
  git clone git@github.com:SoftCreatR/imei $HOME/Code/bash/imei
fi

cd $HOME/Code/bash/imei

chmod +x imei.sh
sudo ./imei.sh
