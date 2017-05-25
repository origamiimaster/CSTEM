/* File: move.ch
Move joints relative to the current positions. */
#include <linkbot.h>
CLinkbotI robot1, robot2;
const double pi = 4.0 * atan(1.0);
int Distance = 15;
double WheelSize1 = 3.5 * pi; //Replace "X" with diamiter of wheel
double RotationPerInch1 = 1/WheelSize1; 
double Inches1 = Distance * RotationPerInch1 * 360; //Replace "X" with how many inches you want it to move
double WheelSpeed1 = (Distance / Inches1) *1000;
double WheelSize2 = 3.975 * pi; //Replace "X" with diamiter of wheel
double RotationPerInch2 = 1/WheelSize2; 
double Inches2 = 8 * RotationPerInch2 * 360; //Replace "X" with how many inches you want it to move
double WheelSpeed2 = (Distance/Inches2) * 1000;
double Inches3;
Inches3 = 22 * RotationPerInch2 * 360;
double Inches4;
Inches4 = 11.5 * RotationPerInch2 * 360;
double Inches5;
Inches5 = 5 * RotationPerInch2 * 360;
double Inches6;
Inches6 = 6 * RotationPerInch2 * 360;
delay(10);
robot1.setJointSpeeds(50, NaN, 50);
robot1.move(-45,NaN, -45);
robot1.move(Inches1, NaN, -Inches1);

robot2.setJointSpeeds(60, NaN, 60);
robot2.move(-Inches2, NaN, Inches2);
robot2.move(-47,NaN, -47);
robot2.move(-Inches3, NaN, Inches3);
robot2.move(Inches6, NaN, -Inches6);
robot2.move(-70,NaN, -70);
robot2.move(-Inches4, NaN, Inches4);
robot2.move(Inches5, NaN, -Inches5);
robot2.move(-110,NaN, -110);
robot2.move(-Inches4, NaN, Inches4);

//printf("%lf\n", WheelSpeed1);
//printf("%lf", WheelSpeed2);
