#!/usr/bin/env bash

if [ -f /usr/bin/zathura ]; then
  exit
fi

UserHome=$HOME
UserConfig="$UserHome/.config"

sudo nala update
sudo nala install zathura-pdf-poppler -y

sudo mkdir -p $UserConfig/zathura

if [ ! -f $UserConfig/zathura/zathurarc ]; then
  echo '# zoom and scroll step size
#set zoom-step 20
#set scroll-step 80

# copy selection to system clipboard
set selection-clipboard clipboard

# enable incremental search
set incremental-search true

# zoom
map <C-i> zoom in
map <C-o> zoom out

#open files in maximized window
set window-height 3000
set window-width 3000

#stop at page boundries
set scroll-page-aware "true"
set smooth-scroll "true"
set scroll-full-overlap 0.01
set scroll-step 100

#setup dark theme
set default-bg "#000000"
set default-fg "#F7F7F6"

set statusbar-fg "#B0B0B0"
set statusbar-bg "#202020"

set inputbar-bg "#151515"
set inputbar-fg "#FFFFFF"

set notification-error-bg "#AC4142"
set notification-error-fg "#151515"

set notification-warning-bg "#AC4142"
set notification-warning-fg "#151515"

set highlight-color "#F4BF75"
set highlight-active-color "#6A9FB5"

set completion-highlight-fg "#151515"
set completion-highlight-bg "#90A959"

set completion-bg "#303030"
set completion-fg "#E0E0E0"

set notification-bg "#90A959"
set notification-fg "#151515"

set recolor "true"
set recolor-lightcolor "#000000"
set recolor-darkcolor "#E0E0E0"
set recolor-reverse-video "true"
set recolor-keephue "true"

set render-loading "false"
' > $UserConfig/zathura/zathurarc
fi
