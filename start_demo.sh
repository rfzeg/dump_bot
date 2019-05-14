#!/bin/sh
echo ""
echo "Dumpster Robot Demo"
echo ""

# Launches Gazebo
xterm -e "roslaunch dumpster gazebo.launch" &
sleep 8 &

# Spawns robot in Gazebo
xterm -e "roslaunch dumpster spawn_dumpster.launch" &
sleep 2 &

# Starts RVIZ with a preconfigured view
xterm -e "roslaunch dumpster rviz.launch"
