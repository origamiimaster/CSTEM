#include <linkbot.h>
CLinkbotI robotB, robotD;

double radius=2, trackwidth=3.69;
int x, y, distanceX, distanceB, distanceD, distanceBY, distanceDY;

printf("Enter x-coordinate");
scanf("%d", &x);
printf("Enter y-coordinate");
scanf("%d", &y);

distanceX=86-x;
distanceB=y-4;
distanceD=38-y;

distanceBY=distanceB+distanceY;
distanceDY=distanceD+distanceY;
