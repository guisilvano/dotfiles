#!/usr/bin/env bash

if [ $1=='play' ]; then
    
    a=$(mpc | grep -o playing)

    if [ "$a" == "playing" ]; then
	mpc --port=4200 --host=/home/gui/.mpd/socket pause
    
    elif [ "$a" == "" ]; then
	mpc --port=4200 --host=/home/gui/.mpd/socket play
    
    else
	mpd
    
    fi
else
    mpc --port=4200 --host=/home/gui/.mpd/socket $1

fi
