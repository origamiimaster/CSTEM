#include <linkbot.h>
CLinkbotI robot;
struct locationXY{
    double locationX;
    double locationY;
    double angle;
};

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
    robot.turnRight(angle, radius, trackwidth);
    robot.driveDistance(distance, radius);
}

void driveToXYFromC(double x, double y, double radius, double trackwidth, CLinkbotI &robot){
    x=2+x;
    y=40-y;
    double z=y/x;
    double distance=hypot(x, y);
    double angle=(atan(z)*(180/M_PI));
    robot.turnRight(angle, radius, trackwidth);
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

void driveInCircleCounterclockwise(double radiusC, double radiusW1, double radiusW3, double trackwidth, double degrees, CLinkbotI &robot){
    
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

locationXY driveToXYFromPoint(double x, double y, locationXY start, double radius, double trackwidth, CLinkbotI &robot){
    const double changeX=x-start.locationX;
    const double changeY=y-start.locationY;
    double angle=(atan(abs(changeX)/abs(changeY))*(180/M_PI));
    switch (changeX){
        case >0:
            switch (changeY){
                case>0:
                    if (start.angle<angle){
                    angle = angle-start.angle;
                    } else if (start.angle=angle){
                        angle=0;
                    } else if (start.angle>angle && start.angle<90){
                        angle = -start.angle+angle;
                    } else if (start.angle>90 && start.angle<=180){
                        angle = -start.angle+(angle);
                    }
                    break;
                case <0:
                    if (start.angle<90+angle){
                    angle = 90+angle-start.angle;
                    } else if (start.angle=90+angle){
                        angle=0;
                    } else if (start.angle>90+angle && start.angle<90){
                        angle = -start.angle+90+angle;
                    } else if (start.angle>90 && start.angle<=180){
                        angle = -start.angle+(90+angle);
                    }
                    break;
                case ==0:
                    angle=90-start.angle;
                break;
            }
        break;
        case <0:
            switch (changeY){
                case>0:
                    if (360-start.angle<angle){
                    angle = angle-(360-start.angle);
                    } else if ((360-start.angle)=angle){
                        angle=0;
                    } else if ((360-start.angle)>angle && (360-start.angle)<90){
                        angle = -(360-start.angle)+angle;
                    } else if ((360-start.angle)>90 && (360-start.angle)<=180){
                        angle = -(360-start.angle)+(angle);
                    }
                    break;
                case <0:
                    if ((270-start.angle)<90+angle){
                    angle = 90+angle-(270-start.angle);
                    } else if ((270-start.angle)=90+angle){
                        angle=0;
                    } else if ((270-start.angle)>90+angle && (270-start.angle)<90){
                        angle = -(270-start.angle)+90+angle;
                    } else if ((270-start.angle)>90 && (270-start.angle)<=180){
                        angle = -(270-start.angle)+(90+angle);
                    }
                    break;
                case ==0:
                    angle=(270-start.angle);
                    break;
            }
        break;
        case==0:
            if (changeY<0){
                angle=180-start.angle;
            }else if (changeY>0){
                angle=-start.angle;
            }else{
                angle==0;
            }
            break;
            }
    robot.turnRight(angle, radius, trackwidth);
    robot.driveDistance(sqrt((abs(changeX)*abs(changeX))+(changeY*changeY)), radius);
    start.locationX += changeX;
    start.locationY += changeY;
    start.angle = start.angle+angle;
    return start;
    }

double radius=2, trackwidth=3.69, x, y;

locationXY location;

location.locationX=15;
location.locationY=40;
location.angle=50;

location = driveToXYFromPoint(12, 39, location, radius, trackwidth, robot);

printf("New location is (%.0lf, %.0lf) at %lf degrees.\n", location.locationX, location.locationY, location.angle);
