#include <linkbot.h>
CLinkbotI robot;

double radius=2, trackwidth=3.69;

robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(12, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(20, radius);

robot.driveDistance(-4, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(4, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(4, radius);
robot.turnLeft(90, radius, trackwidth);

robot.driveDistance(10, radius);

robot.driveDistance(-4, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(4, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(6, radius);

robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(2+7, radius);
