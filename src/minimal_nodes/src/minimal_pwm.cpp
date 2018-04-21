#include<ros/ros.h>   // Include ROS Library
#include <wiringPi.h> // Include wiringPi Library
#include <iostream>
#include <softPwm.h>
#include <std_msgs/UInt16.h>.h>

using namespace std;


void chatterCallback(const std_msgs::UInt16::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data);
 pwmWrite(18,msg->data);
}

int main(int argc, char **argv)
{
  cout << "Raspberry Pi wiringPi test program\n";
  wiringPiSetupGpio(); // Initalize Pi

  pinMode (18, PWM_OUTPUT) ;
  pwmSetMode (PWM_MODE_MS);

  //pwmFrequency in Hz = 19.2e6 Hz / pwmClock / pwmRange.
  // pwmSetRange (200);
  // pwmSetClock (1920);

  ros::init(argc,argv,"minimal_pwm"); //name this node
  // when this compiled code is run, ROS will recognize it as a node called "minimal_wiringPi"

  ros::NodeHandle n; // need this to establish communications with our new node
  ros::Subscriber sub = n.subscribe("Servo_POS", 1000, chatterCallback);


  // 50Hz ---> 20ms per cycle. 20ms / 200 units = 0.1ms per unit
  //pwmWrite(18,15); // 1.5 ms (0 degrees)
  //delay(5000);
  //pwmWrite(18,25); // 2.0 ms (90 degrees)

  while(ros::ok())
  {

  }
  //delay(1000);
  //pwmWrite(18,15); // 1.5 ms (0 degrees)
  //delay(1000);
  //pwmWrite(18,10); // 1.0 ms (-90 degrees)
  return 0;
}
