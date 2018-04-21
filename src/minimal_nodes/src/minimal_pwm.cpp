#include<ros/ros.h>
#include<std_msgs/UInt16.h>
#include <iostream>

using namespace std;

void myCallback(const std_msgs::UInt16& message_holder)
{
  cout << "Recieved: " << message_holder.data << endl;
}

int main(int argc, char **argv)
{
  ros::init(argc,argv,"minimal_pwm"); //name this node
  ros::NodeHandle n; // need this to establish communications with our new node

  ros::Subscriber my_subscriber_object= n.subscribe("Servo_POS",1,myCallback);

  ros::spin();
  return 0; // should never get here, unless roscore dies
}
