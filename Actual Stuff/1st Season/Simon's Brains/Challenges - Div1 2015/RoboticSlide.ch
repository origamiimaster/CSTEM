/* 
Turn left and turn right */

#include <linkbot.h>
CLinkbotI robot;
robot.setLEDColor("black");
double radius = 1.75; // radius of 1.75 inches
double trackwidth = 3.69; // the track width, the distance between two wheels

/********************
Part 1
********************/
robot.turnRight(90, radius, trackwidth);
robot.driveDistance(8, radius);
robot.turnLeft(90, radius, trackwidth);
robot.delaySeconds(1);
/********************
End of Part 1
********************/

/********************
Part 2
********************/
robot.turnLeft(90, radius, trackwidth);
robot.driveDistance(8, radius);
robot.turnRight(90, radius, trackwidth);
robot.delaySeconds(1);
/********************
End of Part 2
********************/

/********************
Part 3
********************/
robot.driveDistance(-4, radius);
robot.delaySeconds(1);
robot.setLEDColor("red");
robot.setLEDColor("black");
/********************
End of Part 3
********************/

/********************
Part 4
********************/
robot.driveDistance(4, radius);
robot.delaySeconds(1);
robot.turnLeft(90, radius, trackwidth);
robot.setLEDColor("blue");
robot.setLEDColor("black");
