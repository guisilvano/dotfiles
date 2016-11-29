#!/usr/bin/env bash

cmus-remote $1

playing=$(cmus-remote -Q | awk '/status / { $1=""; sub(" ", ""); print $0 }')

if [ $1 == -u ]
then
    if [ $playing == "paused" ]
    then
	notify-send "Pause" -t 1
    else
	notify-send "Play" -t 1
    fi
fi 

if [ $1 == -n ]
then
    notify-send "Next" -t 1
fi

if [ $1 == -r ]
then
    cmus-remote -r
    notify-send "Rewind" -t 1
fi
