#include <linkbot.h>
CLinkbotI robot;
double trackwidth = 3.69;
double radius = 2;
int x;
double y;
printf("Please enter the x coordinate.\n");
scanf("%d", &x);

y=1.3*x-3.5;


robot.driveDistance(x+2, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(y-2, radius);
