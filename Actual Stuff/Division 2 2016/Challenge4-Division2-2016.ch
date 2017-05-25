#include <linkbot.h>

double x, y, a, b;

printf("Enter a\n");
scanf("%lf", &a);
printf("Enter b\n");
scanf("%lf", &b);

x=84/((a*b)+1);
y=a*x;
printf("x=%.2lf, y=%.2lf\n", x, y);

CLinkbotI robot;

double radius=2, trackwidth=3.69;

robot.driveDistance(2+x, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(y-2, radius);
