#include <linkbot.h>
CLinkbotI robot1; //Rotating and 3PBZ
CLinkbotI robot2; //Orbiting and LN1M

double radius = 2;
double trackwidth = 3.69;
double speed = 360/28;

robot1.setJointSpeeds(speed, NaN, speed);
robot2.setJointSpeeds(68.72, NaN, 45);

robot1.turnRightNB(360, radius, trackwidth);

double var = (7+trackwidth)/2;

printf("var equals %lf\n", var);

robot2.moveNB(var*360, NaN, -3.5*360);

robot1.moveWait();
robot2.moveWait();
