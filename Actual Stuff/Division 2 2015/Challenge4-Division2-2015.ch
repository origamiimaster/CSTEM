#include <linkbot.h>
#include <chplot.h>
CLinkbotI robot;

double radius=2, trackwidth=3.69, totalTime, segmentTime, speed1, speed2, speed3;
double timeInterval = 0.1;
int numDataPoints; // number of data points recorded
robotRecordData_t timedata, distances; // recorded time and distances
CPlot plot;

printf("Enter total time\n");
scanf("%lf", &totalTime);

segmentTime=totalTime/3;
speed1=15/segmentTime;
speed2=10/segmentTime;
speed3=5/segmentTime;

robot.recordDistanceBegin(timedata, distances, radius, timeInterval);

robot.setSpeed(speed1, radius);
robot.driveDistance(15, radius);
robot.delaySeconds(2);

robot.setSpeed(speed2, radius);
robot.driveDistance(10, radius);
robot.delaySeconds(2);

robot.setSpeed(speed3, radius);
robot.driveDistance(5, radius);




robot.recordDistanceEnd(numDataPoints);

plot.title("Speed Racer");
plot.label(PLOT_AXIS_X, "Time (seconds)");
plot.label(PLOT_AXIS_Y, "Distance (inches)");
plot.data2DCurve(timedata, distances, numDataPoints);
plot.plotting();
