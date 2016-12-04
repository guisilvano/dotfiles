#!/usr/bin/env bash

cp -v ~/.config/dunst/dunstrc ./dunst/dunstrc
cp -v ~/.config/cava/config ./cava/config
cp -v ~/.config/compton.conf ./compton/compton.conf
cp -v ~/.i3/config ./i3/config
cp -v ~/.config/polybar/config ./polybar/config
cp -v /etc/i3status.conf ./i3/i3status.conf
cp -v ~/bin/* ./scripts
cp -v ~/.zshrc ./zshrc
cp -v ~/.mpd/mpd.conf ./mpd/mpd.conf
cp -v ~/.ncmpcpp/config ./ncmpcpp/config

echo "Done!"
