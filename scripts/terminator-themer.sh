#!/usr/bin/bash

if [ -z "$1" ]
then
	echo "Failed to read path"
	exit 1
fi

if [ -z "$2" ]
then
	echo "No name for your theme"
	exit 1
fi

for i in {0..15}
do
	echo $i
	{color[i]}=$(cat $1 | awk '{ print $2 }' | cut  -f2 -d"=")
	echo ${color[i]}
done

echo "  [[$2]]" >> ~/.config/terminator/config
echo "    background_color = "#1d1d1d"" >> ~/.config/terminator/config
echo "    background_darkness = 0.75" >> ~/.config/terminator/config
echo "    background_image = None" >> ~/.config/terminator/config
echo "    background_type = transparent" >> ~/.config/terminator/config
echo "    cursor_color = "#aaaaaa"" >> ~/.config/terminator/config
echo "    font = Terminus 8" >> ~/.config/terminator/config
echo "    foreground_color = "#d1d1d1"" >> ~/.config/terminator/config
echo "    scrollbar_position = hidden" >> ~/.config/terminator/config
echo "    show_titlebar = False" >> ~/.config/terminator/config
echo "    use_system_font = False" >> ~/.config/terminator/config


