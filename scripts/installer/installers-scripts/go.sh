#!/usr/bin/env bash

UserHome=$HOME
if [ ! -d $UserHome/.gvm ]; then
  sudo nala update
  sudo nala install bison

  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi

gvm install go1.4 -B
gvm use go1.4
gvm install go1.17.13
gvm use go1.17.13
gvm install go1.20
gvm use go1.20
gvm install go1.23.1
gvm use go1.23.1
gvm install go1.24.1
gvm use go1.24.1 --default

go install github.com/air-verse/air@latest

go install github.com/charmbracelet/vhs@latest
go install github.com/charmbracelet/freeze@latest
go install -ldflags="-s -w" -v github.com/jesusprubio/up@latest
go install github.com/jesseduffield/lazydocker@latest
go install github.com/jesseduffield/lazygit@latest
go install github.com/a-h/templ/cmd/templ@latest
go install github.com/eliben/static-server@latest
go install github.com/Gelio/go-global-update@latest
go install cuelang.org/go/cmd/cue@latest
go install github.com/melkeydev/go-blueprint@latest
go install github.com/dkorunic/betteralign/cmd/betteralign@latest
go telemetry on
