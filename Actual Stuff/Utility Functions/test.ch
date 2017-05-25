#include<myLinkbot.h>
int main() {
    double radius = 2, trackwidth = 3.69;
    CLinkbotI robot;
    RobotInfo PointA;
    PointA.mX = 0;
    PointA.mY = 0;
    PointA.mAngle = 0;
    PointA.mRadius = 2;
    PointA.mTrackwidth = 3.69;
    PointA.mRobot = robot;
    PointA.turnTo(1, 1);
}
