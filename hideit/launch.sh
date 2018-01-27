#!/usr/bin/env sh

NAME='polybar-top_eDP1'

pkill -f hideIt.sh


# poll until window is available
while true; do
	echo 'polling'
	xprop -name $NAME
	if [[ $? == 0 ]]; then
		break
	fi
	sleep 1
done

hideIt.sh --name $NAME --signal --direction top --peek 0 --steps 2
