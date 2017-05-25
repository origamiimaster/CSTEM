#include <linkbot.h>
CLinkbotI robot;
double trackwidth = 3.69;
double radius = 2;

robot.driveDistance(10, radius);

robot.turnLeft(90, radius, trackwidth);

robot.driveDistance(13, radius);

robot.turnLeft(90, radius, trackwidth);

robot.driveDistance(6, radius);

robot.turnRight(90, radius, trackwidth);
