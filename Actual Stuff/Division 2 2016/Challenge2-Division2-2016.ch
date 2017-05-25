#include <linkbot.h>
CLinkbotI robot1, robot2;

double distance; // the distance of 6 inches to drive forward
double radius=1.75; // the radius of 1.75 inches of the two wheels of the robot
double x, y1, y2, z; // accelerometer values in x, y, and z components
double timeInterval = 0.1;

robot1.setLEDColor("red");
robot2.setLEDColor("red");
robot1.driveForeverNB();
robot1.setLEDColor("green");




robot2.getAccelerometerData(x, y1, z);
y2=y1;
while(abs(y2-y1)<0.03) {
    robot2.getAccelerometerData(x, y2, z);
    robot2.delaySeconds(0.001);
}
robot1.getDistance(distance, radius);
robot2.setLEDColor("green");
robot2.driveDistanceNB(32-distance, radius);
robot1.holdJoints();
robot1.setLEDColor("red");
robot2.moveWait();
robot2.setLEDColor("red"); 
