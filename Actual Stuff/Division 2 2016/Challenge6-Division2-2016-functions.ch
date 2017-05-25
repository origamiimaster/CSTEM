#include <linkbot.h>
CLinkbotI robot1, robot2;

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

void driveToXYFromA(double x, double y, double radius, double trackwidth, CLinkbotI &robot){
    
    double distance=sqrt((x+2)^2+(y-2)^2);
    double angle=(atan(y/x))*180/M_PI;
    
    robot.turnLeft(angle, radius, trackwidth);
    robot.driveDistance(distance, radius);
}

void driveToXYFromB(double x, double y, double radius, double trackwidth, CLinkbotI &robot){
    x=86-x;
    y=y-2;
    double distance=sqrt(x*x+y*y);
    double angle=(asin(y/x))*180/M_PI;
    
    robot.turnLeft(angle, radius, trackwidth);
    robot.driveDistance(distance, radius);
}

void driveToXYFromC(double x, double y, double radius, double trackwidth, CLinkbotI &robot){
    x=x+2;
    y=40-y;
    double distance=sqrt(x*x+y*y);
    double angle=(asin(y/x))*180/M_PI;
    
    robot.turnLeft(angle, radius, trackwidth);
    robot.driveDistance(distance, radius);
}

void driveToXYFromD(double x, double y, double radius, double trackwidth, CLinkbotI &robot){
    x=86-x;
    y=40-y;
    double distance=sqrt(x*x+y*y);
    double angle=(asin(y/x))*180/M_PI;
    
    robot.turnLeft(angle, radius, trackwidth);
    robot.driveDistance(distance, radius);
}

void driveInCircleCounterclockwise(double degrees, CLinkbotI &robot){
    double radiusC, radiusW1, radiusW3;

double trackwidth = 3.69;

printf("Place the bot with Joint 1 at the center of the circle.\n\n");

printf("Please enter the radius of the circle.\n");
scanf("%lf", &radiusC);

printf("Please enter the radius of the wheel on Joint 1.\n");
scanf("%lf", &radiusW1);

printf("Please enter the radius of the wheel on Joint 3.\n");
scanf("%lf", &radiusW3);

double pi = atan(1)*4;

double circumferenceC1 = 2*pi*radiusC;

double circumferenceC2 = 2*pi*(radiusC+trackwidth);

double circumferenceW1 = 2*pi*radiusW1;

double circumferenceW3 = 2*pi*radiusW3;

double degreesW1 = (radiusC/radiusW1);

double degreesW3 = (radiusC+trackwidth)/radiusW3;

double ratio = circumferenceC2/circumferenceC1;

printf("Degrees are %lf and %lf.\nRatio is %lf.\n", degreesW1, degreesW3, ratio);

robot.setJointSpeeds(45, NaN, 45*ratio);

robot.move(degreesW1*degrees, NaN, -degreesW3*degrees);
}

void driveInCircleClockwise(double degrees, CLinkbotI &robot){
    double radiusC, radiusW1, radiusW3;

double trackwidth = 3.69;

printf("Place the bot with Joint 1 at the center of the circle.\n\n");

printf("Please enter the radius of the circle.\n");
scanf("%lf", &radiusC);

printf("Please enter the radius of the wheel on Joint 1.\n");
scanf("%lf", &radiusW1);

printf("Please enter the radius of the wheel on Joint 3.\n");
scanf("%lf", &radiusW3);

double pi = atan(1)*4;

double circumferenceC1 = 2*pi*radiusC;

double circumferenceC2 = 2*pi*(radiusC+trackwidth);

double circumferenceW1 = 2*pi*radiusW1;

double circumferenceW3 = 2*pi*radiusW3;

double degreesW1 = (radiusC/radiusW1);

double degreesW3 = (radiusC+trackwidth)/radiusW3;

double ratio = circumferenceC2/circumferenceC1;

printf("Degrees are %lf and %lf.\nRatio is %lf.\n", degreesW1, degreesW3, ratio);

robot.setJointSpeeds(45*ratio, NaN, 45);

robot.move(degreesW3*degrees, NaN, -degreesW1*degrees);
}

double radius=2, trackwidth=3.69, x, y;

printf("enter x, then y\n");
scanf("%lf", &x);
scanf("%lf", &y);

driveToXYFromA(x, y, radius, trackwidth, robot1);

robot1.driveDistance(-10, radius);
