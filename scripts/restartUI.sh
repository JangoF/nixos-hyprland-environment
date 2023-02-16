#! /usr/bin/env zsh

if [[ `eww windows | grep lb-window-8` ]]; then
    (eww close lb-window-8; sleep 10; eww open lb-window-8) &
fi

if [[ `eww windows | grep id-window-0` ]]; then
    (eww close id-window-0; sleep 10; eww open id-window-0) &
fi
