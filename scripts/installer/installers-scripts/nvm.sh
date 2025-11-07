#!/usr/bin/env bash

if [ -f $HOME/.nvm/install.sh ]; then
  exit
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

version=24.11.0
nvm install $version
nvm use $version --default
npm install -g tldr @nestjs/cli pnpm@latest-10
