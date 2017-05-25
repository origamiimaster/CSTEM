/* File: batonpass.ch
Pass a baton (green light) in a relay race with two Linkbot-Is using accelerometer data. */
#include <linkbot.h>
#include <chplot.h>

CLinkbotI robot1; //Tank and JWZ4
CLinkbotI robot2; //Ship and LN1M


double timeInterval = 0.1; // time interval in 0.1 second
int numDataPoints1, numDataPoints2; // number of data points recorded

double radius=2; // the radius of 1.75 inches of the two wheels of the robot
robotRecordData_t timedataA, timedataB, distancesA, distancesB; // recorded time and distances
CPlot plot; // plotting class

robot1.setSpeed(2, radius);
robot2.setSpeed(4, radius);
robot1.recordDistanceBegin(timedataA, distancesA, radius, timeInterval);
robot2.recordDistanceBegin(timedataB, distancesB, radius, timeInterval);

robot1.driveDistanceNB(30, radius);
robot2.delaySeconds(7.5);
robot2.driveDistanceNB(30, radius);
robot1.moveWait();
robot1.holdJoints();
robot2.moveWait();
robot2.holdJointsAtExit();

robot1.recordDistanceEnd(numDataPoints1);
robot2.recordDistanceEnd(numDataPoints2);

/* plot the data */
plot.title("Time versus distance");
plot.label(PLOT_AXIS_X, "Distance (in.)");
plot.label(PLOT_AXIS_Y, "Time (sec.)");
plot.data2DCurve(timedataA, distancesA, numDataPoints1);
plot.data2DCurve(timedataB, distancesB, numDataPoints2);
plot.plotting();
