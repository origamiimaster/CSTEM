#include <linkbot.h>

CLinkbotI robot1, robot2, robot3;

CLinkbotIGroup group; 

double radius = 2;
double trackwidth = 3.69;
int DistanceToCenter = 7, DistanceFromCenterToNextSpoke = 8;

group.addRobot(robot1);
group.addRobot(robot2);
group.addRobot(robot3);

group.resetToZero();
group.setLEDColor("purple");

/*****************************
STAGE 1
*****************************/
group.driveDistance(DistanceToCenter, radius);
group.setLEDColor("green");
group.turnLeft(300, radius, trackwidth);
group.driveDistance(3, radius);
robot1.delaySeconds(5);
/*****************************
END OF STAGE 1
*****************************/

/*****************************
STAGE 2
*****************************/
group.setLEDColor("blue");
group.turnLeft(300, radius, trackwidth);
group.driveDistance(9, radius);
group.setLEDColor("red");
group.turnRight(540, radius, trackwidth);
group.driveDistance(5, radius);
robot1.delaySeconds(5);
/*****************************
END OF STAGE 2
*****************************/

/*****************************
STAGE 3
*****************************/
group.setLEDColor("orange");
group.turnLeft(270, radius, trackwidth);
//move 2/3 of circle
double radiusC;
radiusC = 3;//radius of the circle the robot needs to move
double pi = atan(1)*4;
double circumferenceC1 = 2*pi*radius;
double circumferenceC2 = 2*pi*(radius+trackwidth);
double circumferenceW1 = 2*pi*radius;
double circumferenceW3 = 2*pi*radius;
double degreesW1 = (radius/radius);
double degreesW3 = (radius+trackwidth)/radius;
double ratio = circumferenceC2/circumferenceC1;
group.setJointSpeeds(45, NaN, 45*ratio);
group.move((2*degreesW1*360)/3, NaN, (2*-degreesW3*360)/3);
//moved
group.setLEDColor("yellow");
group.turnLeft(90, radius, trackwidth);
group.driveDistance(3, radius);
group.setLEDColor("white");
group.turnRight(360, radius, trackwidth);
