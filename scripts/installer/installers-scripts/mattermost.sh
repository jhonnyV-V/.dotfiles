#!/usr/bin/env bash

curl -fsS -o- https://deb.packages.mattermost.com/setup-repo.sh | sudo bash
sudo nala install mattermost-desktop
