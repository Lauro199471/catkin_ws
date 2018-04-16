#include <ros/ros.h>
#include <std_msgs/Int8.h>

int main(int argc, char **argv) {
    ros::init(argc, argv, "minimal_publisher"); // name of this node will be "minimal_publisher"
    ros::NodeHandle n; // two lines to create a publisher object that can talk to ROS
    ros::Publisher my_publisher_object = n.advertise<std_msgs::Int8>("Servo_POS", 100);
    
    while (ros::ok()) 
    {
     
    }
}

