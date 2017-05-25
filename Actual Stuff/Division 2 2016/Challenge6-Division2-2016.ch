#include <linkbot.h>
CLinkbotI robotA, robotB;

robotB.setLEDColor("Blue");

double radius=2, trackwidth=3.69;

robotA.driveDistance(13, radius);
robotA.driveDistance(-4, radius);
robotA.turnRight(90, radius, trackwidth);
robotA.driveDistance(8, radius);
robotA.turnLeft(90, radius, trackwidth);
robotA.driveDistance(7, radius);
robotA.turnLeft(90, radius, trackwidth);
robotA.driveDistance(18, radius);
robotA.driveDistance(-18, radius);
robotA.turnLeft(90, radius, trackwidth);
robotA.driveDistanceNB(18, radius);

robotB.driveDistance(69, radius);
robotB.driveDistance(-4, radius);
robotB.turnLeft(90, radius, trackwidth);
robotB.driveDistance(8, radius);
robotB.turnRight(90, radius, trackwidth);
robotB.driveDistance(7, radius);
robotB.turnRight(90, radius, trackwidth);
robotB.driveDistance(18, radius);
robotB.driveDistance(-18, radius);
