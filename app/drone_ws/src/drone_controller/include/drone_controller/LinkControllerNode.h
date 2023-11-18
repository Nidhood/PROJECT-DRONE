#pragma once

#include "ros/ros.h"
#include "gazebo_msgs/LinkStates.h"
#include "gazebo_msgs/LinkState.h"
#include "drone_controller/prop_angular_velocity_msg.h"
#include "drone_controller/prop_angular_velocity_array_msg.h"

class LinkControllerNode {
public:
    LinkControllerNode();

    // Callback for receiving Gazebo link states
    void linkStatesCallback(const gazebo_msgs::LinkStates::ConstPtr& msg);

    // Callback for receiving propeller angular velocities configuration
    void cmdVelConfigCallback(const drone_controller::prop_angular_velocity_array_msg::ConstPtr& msg);

    // Run the ROS node
    void run();

private:
    ros::Subscriber link_states_sub;
    ros::Publisher rotation_pub;
    ros::Publisher prop_vel_array_pub;
    ros::Subscriber cmd_vel_sub;
    std::vector<std::string> links_to_control;
    std::map<std::string, geometry_msgs::Pose> current_link_states;
};
