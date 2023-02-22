#!/usr/bin/env zsh

if [[ $1 == "--goTo" ]]; then

    # if [[ `hyprctl activewindow | grep -o "class: wofi"` ]]; then
    #     hyprctl dispatch movetoworkspace $2
    # else
    #     if [[ `pidof wofi` ]]; then
    #         pkill wofi
    #     fi

        hyprctl dispatch workspace $2
    # fi

elif [[ $1 == "--moveTo" ]]; then

    # if [[ `hyprctl activewindow | grep -o "class: wofi"` ]]; then
    #     pkill wofi
    # else
    #     if [[ `pidof wofi` ]]; then
    #         pkill wofi
    #     fi

        hyprctl dispatch movetoworkspace $2
    # fi

fi
