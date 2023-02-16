#! /usr/bin/env zsh

sendNotification() {
	# notify-desktop "$1" -h string:x-canonical-private-synchronous:$2 
	notify-desktop "$1" 
}

convertNonlinearStepToLinearStep() { # Value, BaseStepValue, MaxValue, MinStep
    resultValue=$(($1/$3))
    resultValue=$(($resultValue*$2))

    if (($resultValue < $4)); then
        resultValue=$4
    fi

    echo $resultValue
}

getFormatedString() {
    printf "%0.2f\n" $1
}
