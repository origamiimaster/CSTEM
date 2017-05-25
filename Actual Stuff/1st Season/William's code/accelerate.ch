/* File: move.ch
Move joints relative to the current positions. */
#include <linkbot.h>
CLinkbotI robot;
const double pi = 4.0 * atan(1.0);
int Distance = 42;
double WheelSize1 = 3.5 * pi; //Replace "X" with diamiter of wheel
double RotationPerInch1 = 1/WheelSize1; 
double Inches1 = Distance * RotationPerInch1 * 360; //Replace "X" with how many inches you want it to move
double WheelSpeed1 = Distance / WheelSize1;
double WheelSize2 = 3.975 * pi; //Replace "X" with diamiter of wheel
double RotationPerInch2 = 1/WheelSize2; 
double Inches2 = Distance * RotationPerInch2 * 360; //Replace "X" with how many inches you want it to move
double WheelSpeed2 = Distance / WheelSize2;

//robot.setJointSpeeds(WheelSpeed1 + 90, NaN, WheelSpeed2 + 90);
//robot.move(Inches1, NaN, -Inches2);


robot.smoothMoveTo(robot, 1, 45, 0, 200, Inches1);

//smoothMoveToNB(self, 3, 45, 0, 200, Inches2);
