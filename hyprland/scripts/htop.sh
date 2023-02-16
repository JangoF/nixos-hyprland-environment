#!/usr/bin/env zsh

if [[ `pgrep -f "terminal-float-htop"` ]]; then
  pkill -f "terminal-float-htop"
else
  $XDG_CONFIG_HOME/hypr/scripts/terminal.sh float-htop htop
fi
