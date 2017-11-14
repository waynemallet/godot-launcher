#!/bin/bash

if [ ! -d /godot ] ; then
	echo "Failed to find the godot installation at /godot"
    exit 1
fi

dir=`realpath $1`

# Make sure the source folder exists
if [ ! -d $dir ] ; then
	echo "Failed to find source folder $dir"
    exit 2
fi

echo "Adding a module to the /godot/modules/ folder ($dir)"

# Add the link to the new module.  The module will be built on the next launch.
sudo ln -f -s $dir /godot/modules/
