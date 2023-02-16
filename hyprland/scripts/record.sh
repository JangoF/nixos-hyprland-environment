#!/usr/bin/env zsh

source $XDG_CONFIG_HOME/hypr/scripts/common.sh

if [[ `pidof wf-recorder` ]]; then
  exec pkill -SIGINT wf-recorder

else
  fileName="$(date +%H-%M-%S_%d-%m-%Y.mp4)"
  wf-recorder -g "$(slurp)" -D --file=$HOME/Videos/$fileName -c libxvid
  sendNotification "Video \"$fileName\" saved!"
fi
