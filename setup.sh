#!/bin/bash

if [ ! -d /godot ] ; then
	echo "Failed to find the godot installation at /godot"
    exit 1
fi

dir=`pwd`

# Add the launcher icon
if [ ! -e /usr/share/applications/godot ] ; then
	sudo mkdir -f /usr/share/applications/godot
fi
sudo rm /usr/share/applications/godot/godot.desktop
sudo ln -s $dir/godot.desktop /usr/share/applications/godot/godot.desktop

# Create a link for launching the app
sudo ln -f -s $dir/launch.sh /godot/launch.sh
