#!/usr/bin/env bash

if [ -f /usr/bin/i3 ]; then
  return
fi

sudo nala update
sudo nala install i3 rofi i3lock i3status rxvt-unicode brightnessctl -y
