FROM osrf/ros:noetic-desktop-full

# Change the default shell to Bash
SHELL [ "/bin/bash" , "-c" ]

# Install packages
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' \
&& apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 \
&& apt-get update \
&& apt-get install -y \
nano git ros-noetic-moveit ros-noetic-franka-description -y \
# Clear apt-cache to reduce image size
&& rm -rf /var/lib/apt/lists/*
ENV DRONE_WS=/app/drone_ws
COPY app app/
WORKDIR $DRONE_WS

RUN echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc

# Check if the moveit_tutorials repository is already cloned
RUN cd $DRONE_WS/src && \
if [ ! -d "moveit_tutorials" ]; then \
    git clone https://github.com/ros-planning/moveit_tutorials.git -b master; \
fi

# Check if the panda_moveit_config repository is already cloned
RUN cd $DRONE_WS/src && \
if [ ! -d "panda_moveit_config" ]; then \
    git clone https://github.com/ros-planning/panda_moveit_config.git -b noetic-devel; \
fi

# Initialize local catkin workspace
RUN source /opt/ros/noetic/setup.bash \
# Update apt-get because its cache is always cleared after installs to keep image size down
&& apt-get update \
# Install dependencies
&& cd $DRONE_WS && catkin_make && rosdep install -y --from-paths . --ignore-src --rosdistro noetic