#!/usr/bin/env bash

cp -v ./dunst/dunstrc ~/.config/dunst/dunstrc
cp -v ./cava/config ~/.config/cava/config 
cp -v ./compton/compton.conf ~/.config/compton.conf
cp -v ./i3/config ~/.i3/config
cp -v ./polybar/config ~/.config/polybar/config
cp -v ./i3/i3status.conf /etc/i3status.conf
cp -v ./scripts ~/bin/*
cp -v ./zshrc ~/.zshrc
cp -v ./mpd/mpd.conf ~/.mpd/mpd.conf
cp -v ./ncmpcpp/config ~/.ncmpcpp/config

echo "Done!"
