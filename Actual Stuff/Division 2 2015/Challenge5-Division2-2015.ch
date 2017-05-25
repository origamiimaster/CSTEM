#include <linkbot.h>
CLinkbotI robot;

double radius1=1.75, radius2=2, trackwidth=3.69;

robot.setJointSpeeds(360*(5/(M_PI*2*radius1)), NaN, 360*(5/(M_PI*2*radius2)));
robot.move(20/(M_PI*2*radius1)*360, NaN, -20/(M_PI*2*radius2)*360);

robot.setJointSpeeds(((12.566371/(M_PI*2*radius1))*360)/4, NaN, ((25.132741/(M_PI*2*radius2))*360)/4);
robot.move(((12.566371/(M_PI*2*radius1))*360), NaN, -((25.132741/(M_PI*2*radius2))*360));

robot.setJointSpeeds(360*(5/(M_PI*2*radius1)), NaN, 360*(5/(M_PI*2*radius2)));
robot.move(20/(M_PI*2*radius1)*360, NaN, -20/(M_PI*2*radius2)*360);

robot.setJointSpeeds(((12.566371/(M_PI*2*radius1))*360)/4, NaN, ((25.132741/(M_PI*2*radius2))*360)/4);
robot.move(((12.566371/(M_PI*2*radius1))*360), NaN, -((25.132741/(M_PI*2*radius2))*360));
