#include <drone_controller/LinkControllerNode.h>

LinkControllerNode::LinkControllerNode() {
    // Initialize ROS node handle
    ros::NodeHandle nh;

    // Subscribe to Gazebo link states topic
    link_states_sub = nh.subscribe("/gazebo/link_states", 10, &LinkControllerNode::linkStatesCallback, this);

    // Advertise to set Gazebo link state
    rotation_pub = nh.advertise<gazebo_msgs::LinkState>("/gazebo/set_link_state", 10);

    // Advertise to set propeller angular velocities
    prop_vel_array_pub = nh.advertise<drone_controller::prop_angular_velocity_array_msg>("/gazebo/set_prop_angular_velocities", 10);

    // Subscribe to joint control topic
    cmd_vel_sub = nh.subscribe("/set_joint_states", 10, &LinkControllerNode::cmdVelConfigCallback, this);
}

void LinkControllerNode::linkStatesCallback(const gazebo_msgs::LinkStates::ConstPtr& msg) {
    for (size_t i = 0; i < msg->name.size(); ++i) {
        for (const std::string& link_name : links_to_control) {
            if (msg->name[i].find(link_name) != std::string::npos) {
                current_link_states[link_name] = msg->pose[i];
                break;
            }
        }
    }
}

void LinkControllerNode::cmdVelConfigCallback(const drone_controller::prop_angular_velocity_array_msg::ConstPtr& msg) {

    // Iterate through the prop_angular_velocity_msg array
    for (size_t i = 0; i < msg->props.size(); ++i) {
        // Get the corresponding link name
        std::string link_name = msg->props[i].prop_name;

        // Create a LinkState message
        gazebo_msgs::LinkState link_state_msg;
        link_state_msg.link_name = link_name;

        // Preserve current position and orientation
        link_state_msg.pose = current_link_states[link_name];

        // Set angular velocity on the z-axis with the received value
        link_state_msg.twist.angular.z = msg->props[i].angular_velocity;

        // Publish the message with updated link information
        rotation_pub.publish(link_state_msg);
    }
}

void LinkControllerNode::run() {
    // Set the names of links to control
    links_to_control = {"prop1_link", "prop2_link", "prop3_link", "prop4_link"};
    ros::spin();
}
