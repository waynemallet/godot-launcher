#!/bin/bash

if [ ! -d /godot ] ; then
	echo "Failed to find the godot installation at /godot"
    exit 1
fi

# Build any modules that have changed
cd /godot
scons p=x11 -j 4

# Launch godot
/godot/bin/godot.x11.tools.64
