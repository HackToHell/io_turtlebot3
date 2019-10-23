FROM ros:melodic
RUN mkdir -p /catkin_ws && \
    apt-get update && \
    apt-get install -y python-catkin-tools ros-melodic-rosbridge-server && \
    cd /catkin_ws && \
    catkin init
COPY turtlebot3_teleop_cloud /catkin_ws/src/
WORKDIR /catkin_ws
RUN bash -c "source /opt/ros/melodic/setup.bash && catkin build"
CMD /bin/bash -c "source /catkin_ws/devel/setup.bash && roslaunch turtlebot3_teleop_cloud rosbridge.launch"
