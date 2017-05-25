#include <linkbot.h>
CLinkbotI robotS, robotM, robotH;
string_t LEDColor1, LEDColor2, LEDColor3;
scanf("%s", &LEDColor1);
scanf("%s", &LEDColor2);
scanf("%s", &LEDColor3);
robotS.setLEDColor("LEDColor1");
robotM.setLEDColor("LEDColor2");
robotH.setLEDColor("LEDColor3");

/************
SECONDS
************/

while(1) {
    robotS.setJointSpeed(JOINT1, 90);
    robotS.move(45, NaN, 0);
}



/************
MINUTES
************/

while(1){
    robotM.setJointSpeed(JOINT1, 45);
    robotM.move(22.5, NaN, 0);
    robotM.delaySeconds(0.5);
    robotM.setJointSpeed(JOINT1, 45);
    robotM.move(22.5, NaN, 0);
    robotM.delaySeconds(0.5);
    robotM.setJointSpeed(JOINT1, 45);
    robotM.move(22.5, NaN, 0);
    robotM.delaySeconds(0.5);
    robotM.setJointSpeed(JOINT1, 45);
    robotM.move(22.5, NaN, 0);
    robotM.delaySeconds(0.5);
    robot.setBuzzerFrequency(450, 0.5);
}


/************
HOURS
************/

while(1){
    robotH.setJointSpeed(JOINT1, 11.25);
    robotH.move(5.625, NaN, 0);
    robotH.delaySeconds(0.5);
}
