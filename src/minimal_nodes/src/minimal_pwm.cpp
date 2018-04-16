/*
GPIO PIN    RPi pin  PWM Channel    ALT FUN
12                    0             0
13                    1             0
18          1-12      0             5
19                    1             5
40                    0             0
41                    1             0
45                    1             0
52                    0             1
53                    1             1
*/

// The Raspberry Pi PWM clock has a base frequency of 19.2 MHz.
// pwmFrequency in Hz = 19.2e6 Hz / pwmClock / pwmRange.
// pwmSetClock() seems to go from 2 to 4095
// pwmSetRange() is up to 4096 - The PWM range is effectively the 'resolution' or number of possible 'divisions' of each pulse. The more divisions the higher the resolution and thus more states encodable for a given pulse width.

// 50 Hz = 19.2e6 Hz / 1920 / 200

#include<ros/ros.h>   // Include ROS Library
#include <wiringPi.h> // Include wiringPi Library
#include <iostream>
#include <wiringPi.h>

using namespace std;

int main(int argc, char **argv)
{
  int i = 0;

  ros::init(argc,argv,"minimal_pwm"); //name this node
  // when this compiled code is run, ROS will recognize it as a node called "minimal_wiringPi"

  ros::NodeHandle n; // need this to establish communications with our new node

  cout << "Raspberry Pi wiringPi test program\n";
  wiringPiSetupGpio(); // Initalize Pi

  pinMode(18,PWM_OUTPUT); // pinMode([pin] , [mode]): mode = INPUT , OUTPUT , PWM_OUTPUT

  pwmSetMode(PWM_MODE_BAL);// The PWM generator can run in 2 modes – “balanced” and “mark:space”
  //
  pwmSetRange(1024);// This sets the range register in the PWM generator. 0 ~ 1024
  pwmSetClock(32); // This sets the divisor for the PWM clock.

  while(ros::ok()) // Ctrl-C Handler
  {
    pwmWrite(18,i);
    delay(2);
    i = (i + 1) % 1024;
  }

  pwmWrite(18,0);
  cout << "Finished" << endl;
  return 0; // should never get here, unless roscore dies
}
