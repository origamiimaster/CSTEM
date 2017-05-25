/* File: batonpass.ch
Pass a baton (green light) in a relay race with two Linkbot-Is using accelerometer data. */
#include <linkbot.h>
#include <chplot.h>

CLinkbotI robot1; //Tank and JWZ4
CLinkbotI robot2; //Ship and LN1M


double timeInterval = 0.1; // time interval in 0.1 second
int numDataPoints1, numDataPoints2; // number of data points recorded

double radius1=2, radius2=2; // the radius of 1.75 inches of the two wheels of the robot
robotRecordData_t timedata1, timedata2, distances1, distances2; // recorded time and distances
CPlot plot; // plotting class

robot1.setSpeed(2, radius1);
robot2.setSpeed(4, radius2);
robot1.recordDistanceBegin(timedata1, distances1, radius1, timeInterval);
robot2.recordDistanceBegin(timedata2, distances2, radius2, timeInterval);

robot1.driveDistanceNB(30, radius1);
robot2.delaySeconds(7.5);
robot2.driveDistanceNB(30, radius2);
robot1.moveWait();
robot1.holdJoints();
robot2.moveWait();
robot2.holdJoints();

robot1.recordDistanceEnd(numDataPoints1);
robot2.recordDistanceEnd(numDataPoints2);


/* plot the data */
plot.title("Time vs. Distance");
plot.label(PLOT_AXIS_X, "Distances (in.)");
plot.label(PLOT_AXIS_Y, "Time (sec.)");
plot.data2DCurve(distances1, timedata1, numDataPoints1);
plot.legend("Tank Bot", 0);
plot.data2DCurve(distances2, GraphTime2, numDataPoints2);
plot.legend("Ship Bot", 1);
plot.plotting(); 
