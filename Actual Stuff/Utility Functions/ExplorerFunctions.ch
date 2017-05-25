#include <linkbot.h>
CLinkbotI wheel1, wheel2, middleB, middleT;
CLinkbotL grabber;

double circumference(double radius){
    double circumference=M_PI*radius*2;
    return circumference;
}

void driveForward (double distance, double radius, CLinkbotI &wheel1, CLinkbotI &wheel2){

    wheel1.holdJoint(JOINT3);
    wheel2.holdJoint(JOINT1);
    
    wheel1.setSpeeds(30, NaN, 30);
    wheel2.setSpeeds(30, NaN, 30);
    
    double circumference=circumference(radius);
    double degrees=(distance/circumference)*360;
    
    wheel1.moveNB(distance, NaN, 0);
    Wheel2.moveNB(0, NaN, distance);
    wheel1.moveWait();
    wheel2.moveWait();
    
    wheel1.holdJoints();
    wheel2.holdJoints();
}

void turnLeft (double degrees, double radius, CLinkbotI &wheel1, CLinkbotI &wheel2){
    
    double distance=0; //Replace with the distance between the wheels
    double circumference=circumference(distance/2);
    double cirum=circumference(radius);
    
    wheel1.holdJoint(JOINT3);
    wheel2.holdJoint(JOINT1);
    
    wheel1.setSpeeds(30, NaN, 30);
    wheel2.setSpeeds(30, NaN, 30);
    
    double measure=(circumference/circum)*degrees;
    
    wheel1.moveNB(-measure, NaN, 0);
    Wheel2.moveNB(0, NaN, -measure);
    wheel1.moveWait();
    wheel2.moveWait();
                               
    wheel1.holdJoints();
    wheel2.holdJoints();
}

void turnRight (double degrees, double radius, CLinkbotI &wheel1, CLinkbotI &wheel2){
    
    double distance=0; //Replace with the distance between the wheels
    double circumference=circumference(distance/2);
    double cirum=circumference(radius);
    
    wheel1.holdJoint(JOINT3);
    wheel2.holdJoint(JOINT1);
    
    wheel1.setSpeeds(30, NaN, 30);
    wheel2.setSpeeds(30, NaN, 30);
    
    double measure=(circumference/circum)*degrees;
    
    wheel1.moveNB(measure, NaN, 0);
    Wheel2.moveNB(0, NaN, measure);
    wheel1.moveWait();
    wheel2.moveWait();
    
    wheel1.holdJoints();
    wheel2.holdJoints();
}

void pickUp (CLiinkbotI &middleB, CLinkbotI &middleT, CLinkbotL &grabber){
    
    middleB.setSpeeds(30, NaN, 30);
    middleT.setSpeeds(30, NaN, 30);
    gripper.setSpeeds(30, 30, NaN);
    
    gripper.openGripper(60);
    gripper.moveJointTo(JOINT2,90);
    middleB.moveToNB(70,NaN,-70);
    middleT.moveToNB(-10,NaN,10);
    middleB.moveWait();
    middleT.moveWait();
    
    gripper.closeGripper();
    
    middleB.setJointSafetyAngle(50);
    middleB.moveToNB(-12,NaN,12);
    middleT.moveToNB(-90,NaN,90);
    middleB.moveWait();
    middleT.moveWait();
    
    middleB.holdJoints();
    middleT.holdJoints();
    gripper.holdJoints();
}

void release (CLiinkbotI &middleB, CLinkbotI &middleT, CLinkbotL &grabber){
    
    middleB.setSpeeds(30, NaN, 30);
    middleT.setSpeeds(30, NaN, 30);
    gripper.setSpeeds(30, 30, NaN);
    
    gripper.moveJointTo(JOINT2,90);
    middleB.moveToNB(70,NaN,-70);
    middleT.moveToNB(-10,NaN,10);
    middleB.moveWait();
    middleT.moveWait();
    
    gripper.openGripper(60);
    
    middleB.setJointSafetyAngle(50);
    middleB.moveToNB(-12,NaN,12);
    middleT.moveToNB(-90,NaN,90);
    middleB.moveWait();
    middleT.moveWait();
    
    middleB.holdJoints();
    middleT.holdJoints();
    gripper.holdJoints();
}

wheel1.holdJointsAtExit();
wheel2.holdJointsAtExit();
middleB.holdJointsAtExit();
middleT.holdJointsAtExit();
gripper.holdJointsAtExit();