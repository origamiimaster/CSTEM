/* File: expr.ch
   Plot the function y = x^2-1 */
#include<chplot.h>
CPlot plot;              // declare a variable of plotting class
double x0 = -2, xf = 2;  // beginning and end points 
int num = 100;           // number of points for the plot 

plot.title("y=x^2-1");
plot.expr(x0, xf, num, "x*x-1");
plot.plotting();
