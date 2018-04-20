#include<ros/ros.h>   // Include ROS Library
#include <wiringPi.h> // Include wiringPi Library
#include <iostream>
#include <softPwm.h>

using namespace std;

int main(int argc, char **argv)
{
  int i = 0;
  int values[] = {0,25,50,75,100,75,50,25};

  ros::init(argc,argv,"minimal_pwm"); //name this node
  // when this compiled code is run, ROS will recognize it as a node called "minimal_wiringPi"

  ros::NodeHandle n; // need this to establish communications with our new node

  cout << "Raspberry Pi wiringPi test program\n";
  wiringPiSetupGpio(); // Initalize Pi

  //softPwmCreate (int pin, int initialValue, int pwmRange)
  softPwmCreate(18,0,100);


  while(ros::ok()) // Ctrl-C Handler
  {
    for(i = 0 ; i < 8 ; i++ )
    {
      softPwmWrite(18,values[i]);
    }

    delay(1000);
  }

  softPwmWrite(18,values[0]);
  cout << "Finished" << endl;
  return 0; // should never get here, unless roscore dies
}
