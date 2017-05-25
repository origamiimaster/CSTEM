double totDist, totTime, aveSpd, segms, segDist, lastTime, lastSpd, x, spds, times, totTimes;
string_t string;

printf("Enter total distance, average speed, then number of segments\n");
scanf("%lf%lf%lf", &totDist, &aveSpd, &segms);

segDist = totDist / segms;
totTime = totDist / aveSpd;

for(x=1, x<segms-1, x++){
printf("Enter average speed for segment %lf\n", x);
scanf("%lf", &spds);

times = segDist / spds;
totTimes = totTimes + times;
}

lastTime = totTime - totTimes;
printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nPress enter when you are ready for the answer.\n");
scanf("%s", &string);

if(lastTime > 0){
lastSpd = segDist / lastTime;
printf("Your speed would need to be %lf\n", lastSpd);
} else if(lastTime == 0){
printf("You would need to arrive instantaneously");
} else{
printf("It is impossible");
}