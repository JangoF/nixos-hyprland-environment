#!/usr/bin/env zsh

source ~/.config/hypr/scripts/common.sh

getCurrentVolumeValue() {
    echo $(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o '[0-9\.]*')
}

# currentStep=$(convertNonlinearStepToLinearStep $(getCurrentVolumeValue) 0.25 1.0 0.1)

if [[ "$1" == "-i" ]]; then

    if (( "$(getCurrentVolumeValue)" < 1.0)); then
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 2.5%+
        sendNotification "Current VOLUME: $(getFormatedString $(getCurrentVolumeValue))" volume
    fi

elif [[ "$1" == "-d" ]]; then

    wpctl set-volume @DEFAULT_AUDIO_SINK@ 2.5%-
    sendNotification "Current VOLUME: $(getFormatedString $(getCurrentVolumeValue))" volume

elif [[ "$1" == "--mute-sink" ]]; then

	wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

	[[ `wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep MUTED` ]] && isMuted="true" || isMuted="false"
	eww update isMutedSink=$isMuted

	sendNotification "MUTE AUDIO DISABLE ($isMuted)" volume

elif [[ "$1" == "--mute-source" ]]; then

    wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle

	[[ `wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep MUTED` ]] && isMuted="true" || isMuted="false"
	eww update isMutedSource=$isMuted

	sendNotification "MUTE MIC DISABLE ($isMuted)" volume

fi
