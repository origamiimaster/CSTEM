#include <linkbot.h>
CLinkbotI robot1, robot2, robot3, robot4;
CLinkbotL gripper;
robot1.holdJoint(JOINT1);
robot2.holdJoint(JOINT3);
/* Initial position */
robot1.resetToZeroNB();
robot2.resetToZeroNB();
robot3.moveToNB(-12, NaN, 12);
robot4.moveToNB(-90, NaN, 90);
gripper.resetToZeroNB();
robot1.moveWait();
robot2.moveWait();
robot3.moveWait();
robot4.moveWait();
gripper.moveWait();
/* move forward */
robot1.moveNB(0, NaN, 360);
robot2.moveNB(-360, NaN, 0);
robot1.moveWait();
robot2.moveWait();
/* turn left */
robot1.moveNB(0, NaN, -235);
robot2.moveNB(-235, NaN, 0);
robot1.moveWait();
robot2.moveWait();
/* move forward */
robot1.moveNB(0, NaN, 360);
robot2.moveNB(-360, NaN, 0);
robot1.moveWait();
robot2.moveWait();
/* Open the gripper by 60 and joint2 to 90 */
gripper.openGripper(60);
gripper.moveJointTo(JOINT2, 90);
/* arm ready */
robot3.moveToNB(70, NaN, -70);
robot4.moveToNB(-10, NaN, 10);
robot3.moveWait();
robot4.moveWait();
/* Close the gripper to grab an object */
gripper.closeGripper();
/* lift the arm */
robot3.setJointSafetyAngle(50);
robot3.moveToNB(-12, NaN, 12);
robot4.moveToNB(-90, NaN, 90);
robot3.moveWait();
robot4.moveWait();
/* move backward */
robot1.moveNB(0, NaN, -360);
robot2.moveNB(360, NaN, 0);
robot1.moveWait();
robot2.moveWait();
/* turn right */
robot1.moveNB(0, NaN, 235);
robot2.moveNB(235, NaN, 0);
robot1.moveWait();
robot2.moveWait();
/* move backward */
robot1.moveNB(0, NaN, -360);
robot2.moveNB(360, NaN, 0);
robot1.moveWait();
robot2.moveWait();
robot3.holdJointsAtExit(); // robot3 holds joints
gripper.holdJointsAtExit(); // gripper holds the object
