#include <linkbot.h>
CLinkbotI robotW1, robotW2, robotB;
CLinkbotL gripper;

robotB.setJointSpeeds(22.5, NaN, 22.5);

robotW1.resetToZeroNB();
robotW2.resetToZeroNB();
robotB1.resetToZeroNB();
robotB2.resetToZeroNB();
gripper.resetToZero();

gripper.moveWait();
gripper.moveNB(-70, 90, NaN);

robotW1.moveWait();
robotW2.moveWait();
robotB1.moveWait();
robotB2.moveWait();
gripper.moveWait();


robotB1.moveNB(35,NaN,-35);
robotB2.move(-35,NaN,35);
robotB1.moveWait();

robotB1.move(-125,NaN,125);

gripper.move(50, 0, NaN);

robotB2.move(-90, NaN,90);

robotB1.resetToZero();
robotB2.resetToZero();
robotB1.moveWait();



robotW1.holdJointsAtExit();
robotW2.holdJointsAtExit();
robotB1.holdJointsAtExit();
robotB2.holdJointsAtExit();
gripper.holdJointsAtExit();
