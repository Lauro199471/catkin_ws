#include<ros/ros.h>   // Include ROS Library
#include <wiringPi.h> // Include wiringPi Library
#include <iostream>
#include <softPwm.h>
#include <std_msgs/UInt16.h>

using namespace std;

int pos = 0;

void myCallback(const std_msgs::UInt16& message_holder)
{
  cout << "I heard: " << message_holder.data << endl;
  pos = message_holder.data;
}

int main(int argc, char **argv)
{
  cout << "Raspberry Pi wiringPi test program\n";




  ros::init(argc,argv,"minimal_pwm"); //name this node
  // when this compiled code is run, ROS will recognize it as a node called "minimal_wiringPi"

  ros::NodeHandle n; // need this to establish communications with our new node
  ros::Subscriber my_subscriber_object= n.subscribe("Servo_POS",1,myCallback);

  wiringPiSetupGpio(); // Initalize Pi

  pinMode (18, PWM_OUTPUT) ;
  pwmSetMode (PWM_MODE_MS);

  //pwmFrequency in Hz = 19.2e6 Hz / pwmClock / pwmRange.
  // 50Hz ---> 20ms per cycle. 20ms / 200 units = 0.1ms per unit
   pwmSetRange (2000);
   pwmSetClock (192);


  pwmWrite(18,150); // 1.5 ms (0 degrees)
  delay(5000);
  pwmWrite(18,250); // 2.0 ms (90 degrees)

  return 0;
}




