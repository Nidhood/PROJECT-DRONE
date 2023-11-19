```markdown
# DRONE-PROJECT

This project is based on the [PROJECT-DRONE](https://github.com/Nidhood/PROJECT-DRONE.git) repository.

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

[View test video](tests_videos/drone_test_#003.mp4)

That should be enough to get started with your drone project! Remember to check any additional documentation provided in the project repository for specific details. Good luck!