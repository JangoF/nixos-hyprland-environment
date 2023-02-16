#!/usr/bin/env zsh

isMuted=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep MUTED)

if [[ !$isMuted ]]; then
  wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 1
fi

playerctl stop

swaylock \
	--screenshots \
	--clock \
  --timestr "%H:%M" \
  --datestr "%a %d.%m.%y" \
	--indicator \
	--indicator-radius 200 \
	--indicator-caps-lock \
	--indicator-thickness 2 \
  --indicator-x-position 1500 \
  --effect-greyscale \
  --effect-blur 24x4 \
  --effect-vignette 0:0.5 \
	--ring-color aaaaaa \
	--key-hl-color bb0000 \
	--line-color 00000000 \
	--inside-color 000000ee \
	--separator-color 00000000 \
  --text-color bb2222 \
	--grace 2 \
	--fade-in 0.2

if [[ !$isMuted ]]; then
  wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0
fi
