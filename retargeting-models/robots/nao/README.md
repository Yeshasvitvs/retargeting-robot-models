The following are the resources used in putting together the nao model for retargeting:

- [Nao_description](http://wiki.ros.org/nao_description)
- [Noa joints](http://doc.aldebaran.com/2-1/family/nao_t14/joints_t14.html#left-arm-joints)
- [Nao V40 urdf model](https://github.com/ros-naoqi/nao_robot/blob/master/nao_description/urdf/naoV40_generated_urdf/nao.urdf)

The urdf model present in this repo does not have all the joints like for the hands
and fingers. It contains only the main joint that are useful for whole body retargeting.

Total Controllable Joints

- Head      2
- Pelvis    2
- Left Arm  5
- Right Arm 5
- Left Leg  5
- Right Leg 5
