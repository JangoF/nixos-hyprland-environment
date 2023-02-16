#!/usr/bin/env zsh

# if [[ `swww query | grep Error` ]]; then
	swww init #TODO!
	# echo "INIT"
# fi

WALLPAPERS_PATH="/home/jango/.wallpapers"

if [[ "$1" == "-r" ]]; then
	RANDOM_FILE=$(ls $WALLPAPERS_PATH/*.gif | sort -R | tail -1)
	[[ `echo $RANDOM_FILE | grep pixel` ]] && filter="Nearest" || filter="Lanczos3"
	swww img $RANDOM_FILE --transition-type grow --transition-fps 165 --transition-duration 0.25 --transition-step 255 --transition-pos bottom-left --transition-bezier 0.0,0.0,1.0,1.0 --filter $filter 
	
elif [[ "$1" == "-c" ]]; then
	swww clear
fi
