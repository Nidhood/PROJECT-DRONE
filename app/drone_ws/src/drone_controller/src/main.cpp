#include <ros/ros.h>
#include <drone_controller/LinkControllerNode.h>

int main(int argc, char** argv) {
    // Initialize ROS node
    ros::init(argc, argv, "link_controller_node");

    // Create and run LinkControllerNode
    LinkControllerNode node;
    node.run();

    return 0;
}