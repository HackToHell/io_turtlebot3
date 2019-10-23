cmake_minimum_required(VERSION 2.8.3)
project(turtlebot3_teleop_cloud)

##################
## Dependencies ##
##################

find_package(catkin REQUIRED)

############
## catkin ##
############

catkin_package()

#############
## Install ##
#############

install(DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)