# godot-launcher

Sets up the godot installation with a launcher that builds any module changes into godot.

# Prerequisites

The godot installation should already be setup in the root folder /godot.

# Setup

After cloning run the following command from within the folder

    ./setup.sh

# Launch godot

Once setup godot can be launched using the new link created in the setup step.  This
link will allow the caller to automatically build in any changes to custom modules. 

    /godot/launch.sh

# Add a Module

C++ modules can be added to godot which will be built in and added on the next launch.

    ./addmodule.sh <folder path>

This script adds a symbolic link to the /godot/modules/<module name> folder.  On the next
launch the module will be built into godot