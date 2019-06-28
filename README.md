This repository contains a collection of popular robot models with associated urdf models and meshes.
The joint control is achieved through [gazeboyarpplugins](https://github.com/robotology/gazebo-yarp-plugins/)
motor control boards. The models can be launched in gazebo and controlled through [yarp](https://www.yarp.it/) infrastructure as the
robotic middleware.

##### Build and Installation

```

git clone https://github.com/Yeshasvitvs/retargeting-robot-models
cd retargeting-robot-models
mkdir build
cmake ../
make all
make install

```

NOTE: The default installation location is `/usr/local/`.
This can be changed by updating `CMAKE_INSTALL_PREFIX` flag.  

The following environment variables are needed to discover the repository files
by yarp, gazebo and ros. Update your `.bashrc` with the following lines.

```

export YARP_DATA_DIRS=${YARP_DATA_DIRS}:/<path-to-retargeting-robot-models-installation>/share/retargeting-robot-models
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/<path-to-retargeting-robot-models-installation>/share
export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:/<path-to-retargeting-robot-models-installation>/share/retargeting-robot-models/robots:/<path-to-retargeting-robot-models-installation>/share

```
