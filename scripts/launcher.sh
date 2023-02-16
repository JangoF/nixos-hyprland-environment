#! /usr/bin/env zsh

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
##
## launch wofi with alt config

CONFIG="$HOME/.config/wofi/config"
STYLE="$HOME/.config/wofi/style.css"
COLORS="$HOME/.config/wofi/colors"

if [[ "$1" == "-c" ]]; then
    if [[ `pidof wofi` ]]; then
        pkill wofi
    fi
else
    if [[ ! `pidof wofi` ]]; then
	    wofi --show drun --prompt 'Search...' --conf ${CONFIG} --style ${STYLE} --color ${COLORS}
    else
	    pkill wofi
    fi
fi
