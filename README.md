# DRONE-PROJECT: Transforming Dreams into Reality with ROS and Gazebo 🚀✨

Welcome to an exhilarating journey into the realm of robotics, where dreams take flight and innovation knows no bounds. In this project, we have harnessed the power of ROS Noetic and Gazebo 11 to create a cutting-edge drone experience that goes beyond the ordinary.

## About the Project

Our project revolves around a meticulously crafted drone simulation, leveraging the robust capabilities of ROS Noetic for seamless communication and coordination. Gazebo 11, our playground of possibilities, breathes life into our virtual environment, providing a dynamic and realistic arena for our drone to soar.

## Key Features
- **State-of-the-Art Simulation:** Immerse yourself in a state-of-the-art drone simulation, meticulously designed to replicate real-world scenarios. Gazebo's advanced physics engine ensures an authentic experience, allowing you to push the boundaries of your drone's capabilities.

- **Intuitive ROS Control:** Harness the power of ROS Noetic for intuitive control and communication. Our project seamlessly integrates ROS functionalities, empowering you to interact with your drone effortlessly and make your wildest ideas take flight.

## Setup Instructions

1. **Clone the Repository:**
   ```sh
   git clone https://github.com/Nidhood/PROJECT-DRONE.git
   ```

2. **Enter the Project Directory:**
   ```sh
   cd ~/PROJECT-DRONE
   ```

3. **Build the Docker:**
   Make sure you have Docker installed. Then, run the following command to build and run the container:
   ```sh
   source run_image.sh
   ```

   This script likely defines and runs a Docker container with the necessary configurations for your project.

4. **Inside the Container:**
   After running the container, you can build and load dependencies with the following command:
   ```sh
   source init.sh
   ```

   This will likely install all the dependencies necessary for your project.

5. **Start the Simulation in Gazebo:**
   To run the simulation in Gazebo, use the following command:
   ```sh
   roslaunch hector_quadrotor_gazebo quadrotor_empty_world.launch
   ```

6. **Use ROS Control:**
   To control the drone using ROS teleop, run the following command:
   ```sh
   rosrun teleop_twist_keyboard teleop_twist_keyboard.py
   ```

   This command will likely allow you to send movement commands to the drone using the keyboard.

## Test

[View test video](https://github.com/Nidhood/PROJECT-DRONE/blob/main/tests_videos/drone_test_%23003.mp4)

## Technologies Used

Our journey into the realm of robotics has been powered by a set of cutting-edge technologies that have brought our project to life. Here are some key tools that have fueled our exploration:

- **ROS Noetic 🤖:**
  The Robotic Operating System (ROS) Noetic has been the heartbeat of our platform, facilitating efficient communication and control of robots.

- **Gazebo 11 🌐:**
  Gazebo, in its version 11, has provided the perfect playground for simulating and visualizing our drones in realistic virtual environments.

- **Python 3 🐍:**
  We have harnessed the versatility of Python 3 for the implementation of control logic and scripts, making development and experimentation straightforward.

- **C++11 🖥️:**
  For optimization and execution of critical components, we've employed C++11, leveraging its modern and efficient features.

- **Docker 🐳:**
  Virtualization through Docker has simplified the management of the development environment, ensuring project portability and reproducibility.
  
## Inspirational Codebases

Our project stands on the shoulders of giants, drawing inspiration from and building upon some remarkable codebases. Here are a few key repositories that have influenced our journey:

1. **[ROS Tutorials](https://github.com/ros/ros_tutorials):**
   The ROS Tutorials have been an invaluable resource, providing clear examples and best practices for working with the Robotic Operating System.

2. **[Gazebo Models](https://github.com/osrf/gazebo_models):**
   The Gazebo Models repository has served as a treasure trove of pre-built models, accelerating our development by providing a diverse set of simulated objects.

3. **[hector_quadrotor](https://github.com/tu-darmstadt-ros-pkg/hector_quadrotor):**
   The hector_quadrotor repository, maintained by TU Darmstadt, has been a guiding light for drone simulation in Gazebo, influencing our approach to realistic aerial dynamics.

4. **[teleop_twist_keyboard](https://github.com/ros-teleop/teleop_twist_keyboard):**
   The teleop_twist_keyboard package has been instrumental in enabling intuitive control of robots using keyboard input, forming the basis for our control mechanisms.
   
## Join the Adventure

We invite you to join us on this thrilling adventure as we explore the endless possibilities of ROS Noetic and Gazebo 11. Whether you're a seasoned roboticist or a curious explorer, our project promises excitement, innovation, and the sheer joy of bringing dreams to life.

Are you ready to redefine what's possible? Let's take flight together! 🚀🎉
