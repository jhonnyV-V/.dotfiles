#!/usr/bin/env bash

if [ -f /usr/bin/wezterm ]; then
  return
fi

if [ ! -f /etc/apt/sources.list.d/wezterm.list ]; then
  curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
  echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
fi

sudo nala update
sudo nala install wezterm
