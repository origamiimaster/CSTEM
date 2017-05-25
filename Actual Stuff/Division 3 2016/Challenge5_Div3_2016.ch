#include <linkbot.h>
#include <chplot.h> 
CLinkbotI robot1, robot2, robot3;
CLinkbotIGroup group;
group.addRobot(robot1);
group.addRobot(robot2);
group.addRobot(robot3);

double circumference(double radius){
    double circumference=M_PI*radius*2;
    return circumference;
}

void rotateRight90(double radius, double trackwidth, CLinkbotI &robot){
    robot.driveDistance(-4, radius);
    robot.turnRight(90, radius, trackwidth);
    robot.driveDistance(5, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(7, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(2, radius);
}

void rotateLeft90(double radius, double trackwidth, CLinkbotI &robot){
    robot.driveDistance(-4, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(5, radius);
    robot.turnRight(90, radius, trackwidth);
    robot.driveDistance(7, radius);
    robot.turnRight(90, radius, trackwidth);
    robot.driveDistance(2, radius);
}

void rotate180(double radius, double trackwidth, CLinkbotI &robot){
    robot.driveDistance(-4, radius);
    robot.turnRight(90, radius, trackwidth);
    robot.driveDistance(5, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(14, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(5, radius);
    robot.turnLeft(90, radius, trackwidth);
    robot.driveDistance(4, radius);
}

void driveToXYFromA(double x, double y, double radius, double trackwidth, CLinkbotI &robot){
    x=2+x;
    y=y-2;
    double z=y/x;
    double distance=hypot(x, y);
    double angle=(atan(z)*(180/M_PI));
    robot.turnLeft(angle, radius, trackwidth);
    robot.driveDistance(distance, radius);
}

void driveToXYFromB(double x, double y, double radius, double trackwidth, CLinkbotI &robot){
    x=85-x;
    y=y-2;
    double z=y/x;
    double distance=hypot(x, y);
    double angle=(atan(z)*(180/M_PI));
    robot.turnLeft(angle, radius, trackwidth);
    robot.driveDistance(distance, radius);
}

void driveToXYFromC(double x, double y, double radius, double trackwidth, CLinkbotI &robot){
    x=2+x;
    y=40-y;
    double z=y/x;
    double distance=hypot(x, y);
    double angle=(atan(z)*(180/M_PI));
    robot.turnLeft(angle, radius, trackwidth);
    robot.driveDistance(distance, radius);
}

void driveToXYFromD(double x, double y, double radius, double trackwidth, CLinkbotI &robot){
    x=86-x;
    y=40-y;
    double z=y/x;
    double distance=hypot(x, y);
    double angle=(atan(z)*(180/M_PI));
    robot.turnLeft(angle, radius, trackwidth);
    robot.driveDistance(distance, radius);
}

void driveInCircleCounterclockwise(double radiusC, double radiusW1, double radiusW3, double trackwidth, double degrees, CLinkbotIGroup &robot){
    
    printf("Place the bot with Joint 1 at the center of the circle.\n\n");
    double circumferenceC1 = circumference(radiusC-(trackwidth*0.5));
    double circumferenceC2 = circumference(radiusC+(trackwidth*0.5));
    double circumferenceW1 = circumference(radiusW1);
    double circumferenceW3 = circumference(radiusW3);
    double rotationsW1 = circumferenceC1/circumferenceW1;
    double rotationsW3 = circumferenceC2/circumferenceW3;
    double ratio = circumferenceC2/circumferenceC1;
    robot.setJointSpeeds(45, NaN, 45*ratio);
    robot.move(rotationsW1*degrees, NaN, -rotationsW3*degrees);
}

void driveInCircleClockwise(double radiusC, double radiusW1, double radiusW3, double trackwidth, double degrees, CLinkbotI &robot){
    printf("Place the bot with Joint 1 at the center of the circle.\n\n");
    double circumferenceC1 = circumference(radiusC+(trackwidth*0.5));
    double circumferenceC2 = circumference(radiusC-(trackwidth*0.5));
    double circumferenceW1 = circumference(radiusW1);
    double circumferenceW3 = circumference(radiusW3);
    double rotationsW1 = circumferenceC1/circumferenceW1;
    double rotationsW3 = circumferenceC2/circumferenceW3;
    double ratio = circumferenceC1/circumferenceC2;
    robot.setJointSpeeds(45*ratio, NaN, 45);
    robot.move(rotationsW1*degrees, NaN, -rotationsW3*degrees);
}

double radius=2, trackwidth=3.69;
group.setLEDColor("purple");

group.driveDistance(6, radius);
group.setLEDColor("green");
group.turnLeft(300, radius, trackwidth);
group.driveDistance(hypot(1, 8), radius);
robot1.delaySeconds(5);


group.setLEDColor("blue");
group.turnLeft(300, radius, trackwidth);
group.driveDistance(hypot(1, 8), radius);
group.setLEDColor("red");
group.turnRight(540, radius, trackwidth);
group.driveDistance(6, radius);
robot1.delaySeconds(5);

group.setLEDColor("orange");
group.turnLeft(270, radius, trackwidth);
driveInCircleCounterclockwise((2+trackwidth*0.5), radius, radius, trackwidth, 240, group);
group.setLEDColor("yellow");
group.turnLeft(90, radius, trackwidth);
group.driveDistance(6, radius);
group.setLEDColor("white");
group.turnRight(360, radius, trackwidth);
