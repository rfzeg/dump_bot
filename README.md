# Dumpster robot

## Abstract
The package contains a URDF robot model description of the dumpster robot for use in simulation.

## Brief description of the robot model
Dumpster is a mobile robot base that has a differential drive conﬁguration.
The robot model comprises the following components: a rigid chassis, two independently driven wheels ﬁxed on a common horizontal axis and two passive support castor wheels one at the front and one at the back.
It also features a dump bin on top of its chassis. Additionally, both a laser scanner and a camera are included in an elevated position in order to improve/maximize the sensors ﬁeld of view.

![RobotModels1](https://user-images.githubusercontent.com/40167051/56065185-6f83aa00-5d74-11e9-84e7-399de40695e3.png)
Image of the robot model

## Plugins
To provide situational awareness the robot model is equipped with a camera and a laser scanner.

## Repository architecture
### Directories :
+ **urdf/** : (required) contains the files that generate the robot model and provide simulated actuators and sensors
+ **meshes/** : (required) contains the mesh files that are part of the geometry of that robot
+ **config/** : (optional) contains YAML files that store the Navigation Stack configuration files for the robot
+ **rviz/** : (optional) contains Rviz configuration settings for displaying the robot model
+ **launch/** : (optional) contains launch files for a demo of the robot model in Gazebo
+ **worlds/** : (optional) contains scene/environment files for Gazebo
+ **maps/** : (optional) contains the occupancy grid based maps required for navigation

### Robot model files :
+ **dumster.xacro** : the xacro file that generates the urdf description file of the robot
+ **dumster.gazebo** : file accompanying the .xacro file, it contains the gazebo specific plugins that provide an interface to control the robot and simulate sensors

## Direct usage:

- Clone this repository into a ROS catkin workspace
- Build and source the workspace
- To launch this package including Rviz: `roslaunch dumpster demo.launch`

If you want to move the robot using a keyboard you will also need to start a teleop node.  
To run the robot with the Navigation Stack type in a new window: `roslaunch dumpster amcl.launch`

This package has only been tested on Ubuntu 16.04 LTS with ROS Kinetic and Gazebo 7.0.d
