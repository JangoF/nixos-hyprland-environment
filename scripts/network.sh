#!/usr/bin/env zsh

if [[ `pgrep -f "terminal-float-nmtui"` ]]; then
  pkill -f "terminal-float-nmtui"
else
  $XDG_CONFIG_HOME/hypr/scripts/terminal.sh float-nmtui nmtui
fi
