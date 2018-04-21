#include<ros/ros.h>
#include<std_msgs/UInt16.h>
#include <iostream>
#include <wiringPi.h>

using namespace std;

int pos = 0;
void myCallback(const std_msgs::UInt16& message_holder)
{
  cout << "Recieved: " << message_holder.data << endl;
  pos = message_holder.data;
}

int main(int argc, char **argv)
{
  ros::init(argc,argv,"minimal_pwm"); //name this node
  ros::NodeHandle n; // need this to establish communications with our new node

  ros::Subscriber my_subscriber_object= n.subscribe("Servo_POS",1,myCallback);

  wiringPiSetup();
  pinMode(18,OUTPUT);

  pwmSetMode(PWM_MODE_MS);

  //clock at 50Hz (20ms tick)... pwmFrequency in Hz = 19.2e6 Hz / pwmClock / pwmRange.
  pwmSetClock(1920);
  pwmSetRange(200); //range at 200 ticks =>0.4ms per ticks

  ros::Rate r(10); // 10 hz
  while(1)
  {
    pwmWrite(18, pos);
    ros::spinOnce();
    r.sleep();
  }

  return 0; // should never get here, unless roscore dies
}
