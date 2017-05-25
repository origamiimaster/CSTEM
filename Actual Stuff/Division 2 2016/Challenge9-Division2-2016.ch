#include <linkbot.h>
CLinkbotI robot;

double radius = 2, trackwidth = 3.69;

robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(12, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(12, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(2, radius);//touching the bottom of block on earth

robot.driveDistance(10.5, radius);//top of mat

robot.driveDistance(-4, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(6, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(6, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(2, radius);//position on the left of block

robot.driveDistance(68, radius);

robot.driveDistance(-4, radius);
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(6, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(6, radius);
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(2, radius);//position above block

robot.driveDistance(10.5, radius);
