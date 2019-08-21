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

##### Running Retargeting with Multiple Robot Models

The directory `retargeting-shell-scripts` contains bash scripts to run retargeting demo
with multiple robot models easily.

- `retargeting-yarprobotinterface.sh` script launches `yarprobotinterface` with configuration files for retargeting for multiple robots
- `retargeting-yarprobotstatepublisher.sh` script launches `yarprobotstatepublisher` for multiple robot models

The multiple robot models include the following models:

- Human
- iCub
- Nao
- Walkman
- Atlas
- Baxter

##### Running Rviz Visualization with Multiple Robot Models

The directory `ros` contains `roslaunch` file and `rviz` configuration file.
To launch Rviz Visualization with multiple robot model run the following command on a terminal after running retargeting with multiple robot models

```
roslaunch retargeting-robot-models retargetingRobotModelsRviz.launch
```
