#include <linkbot.h>
CLinkbotI robot;
double radius; // radius of 1.75 inches
double trackwidth = 3.69; // the track width, the distance between two wheels
robot.setLEDColor("green");
printf("Please enter the radius of the wheels\n");
scanf("%lf", &radius);

robot.setSpeed(3, radius);

int x, y;
printf("Enter x value\n");
scanf("%d", &x);
printf("Enter y value\n");
scanf("%d", &y);

robot.driveDistance(x+48, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(y+22, radius); //was +25
