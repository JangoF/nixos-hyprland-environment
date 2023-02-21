#!/usr/bin/env zsh

# <class name> <is single window> <application>

if [ "$#" -eq 0 ]; then
  kitty --class "terminal"
elif [ "$#" -eq 1 ]; then
  kitty --class "terminal-$1"
elif [ "$#" -gt 1 ]; then
  kitty --class "terminal-$1" -e ${@:2}
fi

# if [ "$#" -eq 0 ]; then
#   alacritty --class "terminal"
# elif [ "$#" -eq 1 ]; then
#   alacritty --class "terminal-$1"
# elif [ "$#" -gt 1 ]; then
#   alacritty --class "terminal-$1" -e ${@:2}
# fi
