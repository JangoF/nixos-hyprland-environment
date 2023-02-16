#!/usr/bin/env zsh

source ~/.config/hypr/scripts/common.sh

getCurrentBacklightValue() {
	echo $(light -G)
}

currentStep=$(convertNonlinearStepToLinearStep $(getCurrentBacklightValue) 25.0 100.0 0.5)

# if [[ "$1" == "-i" ]]; then
#     light -A 10
# elif [[ "$1" == "-d" ]]; then
#     light -U 10
# fi

if [[ "$1" == "-i" ]]; then
    light -A $currentStep
elif [[ "$1" == "-d" ]]; then
    light -U $currentStep
fi

# for i in {0..10}
# do
#     if [[ "$1" == "-i" ]]; then
#         light -A 1
#     elif [[ "$1" == "-d" ]]; then
#         light -U 1
#     fi

#     sleep 0.01
# done

sendNotification "Current BACKLIGHT: $(getFormatedString $(getCurrentBacklightValue))" backlight
