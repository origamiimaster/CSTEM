#include <linkbot.h>
CLinkbotI robot1;//On asteroid
CLinkbotI robot2;//On earth

int radius=2, trackwidth=3.69;

robot1.setSpeed(1, radius);
robot2.setSpeed(5, radius);

robot1.driveDistanceNB(38, radius);

robot2.driveDistance(5, radius);
robot2.turnLeft(90, radius, trackwidth);
robot2.driveDistance(15, radius);

robot2.turnLeft(90, radius, trackwidth);
robot2.driveDistance(5, radius);
robot2.turnLeft(90, radius, trackwidth);
robot2.driveDistance(10, radius);


robot2.turnLeft(90, radius, trackwidth);
robot2.driveDistance(20, radius);
robot2.turnLeft(90, radius, trackwidth);
robot2.driveDistance(15, radius);
robot2.turnLeft(90, radius, trackwidth);
robot2.driveDistance(10, radius);

robot2.turnLeft(90, radius, trackwidth);
robot2.driveDistance(15, radius);
robot2.turnLeft(90, radius, trackwidth);
robot2.setSpeed(1, radius);
robot2.driveForeverNB();

robot1.moveWait();
robot2.holdJoints();
