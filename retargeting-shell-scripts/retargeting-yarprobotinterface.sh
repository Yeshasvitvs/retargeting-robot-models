#!/bin/bash

xterm -title "Retargeting Human" -e "yarprobotinterface --config RobotStateProvider_Human.xml" &
xterm -title "Retargeting Nao" -e "yarprobotinterface --config RobotStateProvider_Nao.xml" &
xterm -title "Retargeting iCub" -e "yarprobotinterface --config RobotStateProvider_iCub.xml" &
xterm -title "Retargeting Walkman" -e "yarprobotinterface --config RobotStateProvider_Walkman.xml" &
xterm -title "Retargeting Atlas" -e "yarprobotinterface --config RobotStateProvider_Atlas.xml" &
xterm -title "Retargeting Baxter" -e "yarprobotinterface --config RobotStateProvider_Baxter.xml" &
