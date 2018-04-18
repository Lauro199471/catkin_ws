#include "ros/ros.h"
#include "sensor_msgs/Joy.h"
#include <iostream>
#include <wiringPi.h>

using namespace std;

void chatterCallback(const sensor_msgs::Joy::ConstPtr& msg)
{
  cout << "Right Trigger: " << (msg->axes[2] + 1) * 500 << endl;
}

int main(int argc, char **argv)
{

  int gpiopin = 18;
  int pwmClock = 384;
  int pwmRange = 1000;

  ros::init(argc, argv, "listener");
  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("joy", 1000, chatterCallback);
  ros::spin();

  wiringPiSetupGpio();
  pinMode(gpiopin,OUTPUT);

  pwmSetMode(PWM_MODE_MS);
  // 50 Hz = 19.2 MHz / (Clock * 1000) => Clock = 384
  pwmSetRange(pwmRange);
  pwmSetClock(pwmClock);

  while(ros::ok()) // Ctrl-C Handler
  {
    pwmWrite(gpiopin,999);
  }

  pwmWrite(18,0);
  cout << "Finished" << endl;
  return 0;
}
