#!/usr/bin/env bash

if [ -f $HOME/.nvm/install.sh ]; then
  exit
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

nvm install 20.5.0
nvm use 20.5.0 --default
npm install -g tldr @nestjs/cli
