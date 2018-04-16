/*
 * Blink LED in Raspberry Pi 3
 *
 * Pin: GPIO18(Pin 12)
 *
*/
#include <wiringPi.h>
#include <stdio.h>
#include <ros/ros.h>
#include <iostream>

using namespace std;

#define one_sec 1000

int main (int argc, char **argv)
{
  int gpiopin = 18;

  printf("Raspberry Pi wiringPi blink test\n");

  // *** ROS Stuff ****
  ros::init(argc,argv,"minimal_blink"); //name this node
  ros::NodeHandle n; // need this to establish communications with our new node
  // ******************

  // Always initialise wiringPi. Use wiringPiSys() if you don't need
  //	(or want) to run as root
  wiringPiSetupSys();
  wiringPiSetupGpio(); // Initalize Pi GPIO

  pinMode(gpiopin, OUTPUT);

  while(ros::ok())
  {
    printf("LED On\n");
    digitalWrite(gpiopin, 1);
    delay(one_sec);
    printf("LED Off\n");
    digitalWrite(gpiopin, 0);
    delay(one_sec);
  }

  cout << "\nFinished\n";
  return 0;
}
