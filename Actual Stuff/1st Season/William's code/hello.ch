/* File: move.ch
Move joints relative to the current positions. */
#include <linkbot.h>
CLinkbotI robot1;
const double pi = 4.0 * atan(1.0);
int Distance = 42;
double WheelSize1 = 3.5 * pi; //Replace "X" with diamiter of wheel
double RotationPerInch1 = 1/WheelSize1; 
double Inches1 = Distance * RotationPerInch1 * 360; //Replace "X" with how many inches you want it to move
double WheelSpeed1 = (Distance / Inches1) *1000;
//double WheelSize2 = 3.975 * pi; //Replace "X" with diamiter of wheel
//double RotationPerInch2 = 1/WheelSize2; 
//double Inches2 = Distance * RotationPerInch2 * 360; //Replace "X" with how many inches you want it to move
//double WheelSpeed2 = (Distance/Inches2) * 1000;
robot1.setJointSpeeds(90, NaN, 90);
robot1.move(-Inches1, NaN, Inches1);

//printf("%lf\n", WheelSpeed1);
//printf("%lf", WheelSpeed2);


