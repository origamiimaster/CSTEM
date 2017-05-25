#include <linkbot.h>
#include <chplot.h>
CLinkbotI robot;

robot.setLEDColor("pink");
double speed; // speed in 1.5 inches/seconds
double radius; // radius of the wheel in inches
double timeInterval = 0.1; // time interval in 0.1 second
double time1; // total travel time
double distance;
double circumference;
double pi = atan(1) * 4;
int numDataPoints; // number of data points recorded
robotRecordData_t timedata, distances; // recorded time and distances
CPlot plot; // plotting class

printf("Please input the radius for the wheels\n");
scanf("%lf", &radius);
printf("Please input the distance in inches for the robot to travel\n");
scanf("%lf", &distance);
printf("Please input the time for the robot to move %.0lf inches\n", distance);
scanf("%lf", &time1);

circumference = pi * 2 * radius;
speed = distance / time1;

/* move to the zero position */
robot.resetToZero();

/* set the robot speed to ’speed’ */
robot.setSpeed(speed, radius);

/* begin recording time and distance */
robot.recordDistanceBegin(timedata, distances, radius, timeInterval);

/* drive the robot for the specified ’time1’ */
robot.driveTime(time1);

/* end recording time and distance */
robot.recordDistanceEnd(numDataPoints);

/* plot the data */
plot.title("Distance versus time");
plot.label(PLOT_AXIS_X, "Time (seconds)");
plot.label(PLOT_AXIS_Y, "Distance (inches)");
plot.data2DCurve(timedata, distances, numDataPoints);
plot.plotting();
