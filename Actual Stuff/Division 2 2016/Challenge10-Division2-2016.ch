#include <linkbot.h>

double radius=2, trackwidth=3.69;

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
robot1.moveNB(-1*(6/(2*radius*M_PI))*360, NaN, (6/(2*radius*M_PI))*360);
robot2.moveNB((6/(2*radius*M_PI))*360, NaN, -1*(6/(2*radius*M_PI))*360);
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

/* move forward */
robot1.moveNB(-1*(6/(2*radius*M_PI))*360, NaN, (6/(2*radius*M_PI))*360);
robot2.moveNB((6/(2*radius*M_PI))*360, NaN, -1*(6/(2*radius*M_PI))*360);
robot1.moveWait();
robot2.moveWait();

/* arm ready */ 
robot3.moveToNB(70, NaN, -70); 
robot4.moveToNB(-10, NaN, 10); 
robot3.moveWait(); 
robot4.moveWait();

gripper.openGripper(60);
gripper.moveWait();
