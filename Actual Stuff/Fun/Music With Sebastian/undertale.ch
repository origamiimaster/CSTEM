/* Making a Linkbot play the Imperial March.  */

#include <linkbot.h>
CLinkbotI robot1;

double	C0  =16.35;
double	Db0 =17.32;
double	D0	=18.35;
double	Eb0	=19.45;
double	E0	=20.60;
double	F0	=21.83;
double	Gb0	=23.12;
double	G0	=24.50;
double	Ab0	=25.96;
double	LA0	=27.50;
double	Bb0	=29.14;
double	B0	=30.87;
double	C1	=32.70;
double	Db1	=34.65;
double	D1	=36.71;
double	Eb1	=38.89;
double	E1	=41.20;
double	F1	=43.65;
double	Gb1	=46.25;
double	G1	=49.00;
double	Ab1=51.91;
double	LA1=55.00;
double	Bb1=58.27;
double	B1	=61.74;
double	C2	=65.41;
double	Db2	=69.30;
double	D2	=73.42;
double	Eb2	=77.78;
double	E2	=82.41;
double	F2	=87.31;
double	Gb2	=92.50;
double	G2	=98.00;
double	Ab2	=103.83;
double	LA2	=110.00;
double	Bb2	=116.54;
double	B2	=123.47;
double	C3	=130.81;
double	Db3	=138.59;
double	D3	=146.83;
double	Eb3	=155.56;
double	E3	=164.81;
double	F3	=174.61;
double	Gb3	=185.00;
double	G3	=196.00;
double	Ab3	=207.65;
double	LA3	=220.00;
double	Bb3	=233.08;
double	B3	=246.94;
double	C4	=261.63;
double	Db4	=277.18;
double	D4	=293.66;
double	Eb4	=311.13;
double	E4	=329.63;
double	F4	=349.23;
double	Gb4	=369.99;
double	G4	=392.00;
double	Ab4	=415.30;
double	LA4	=440.00;
double	Bb4	=466.16;
double	B4	=493.88;
double	C5	=523.25;
double	Db5	=554.37;
double	D5	=587.33;
double	Eb5	=622.25;
double	E5	=659.26;
double	F5	=698.46;
double	Gb5	=739.99;
double	G5	=783.99;
double	Ab5	=830.61;
double	LA5	=880.00;
double	Bb5	=932.33;
double	B5	=987.77;
double	C6	=1046.50;
double	Db6	=1108.73;
double	D6	=1174.66;
double	Eb6	=1244.51;
double	E6	=1318.51;
double	F6	=1396.91;
double	Gb6	=1479.98;
double	G6	=1567.98;
double	Ab6	=1661.22;
double	LA6	=1760.00;
double	Bb6	=1864.66;
double	B6	=1975.53;
double	C7	=2093.00;
double	Db7	=2217.46;
double	D7	=2349.32;
double	Eb7	=2489.02;
double	E7	=2637.02;
double	F7	=2793.83;
double	Gb7	=2959.96;
double	G7	=3135.96;
double	Ab7	=3322.44;
double	LA7	=3520.01;
double	Bb7	=3729.31;
double	B7	=3951.07;
double	C8	=4186.01;
double	Db8	=4434.92;
double	D8	=4698.64;
double	Eb8	=4978.03;
// DURATION OF THE NOTES 
double Q =0.5; //quarter 1/4 
double H =2*Q; //half 2/4
double E =Q/2;   //eighth 1/8
double S =Q/4; // sixteenth 1/16
double W =4*Q; // whole 4/4

// the loop routine runs over and over again forever:

//robot.setBuzzerFrequency(pin, note, duration)
robot1.setBuzzerFrequency(D5, S);
    delay(1+S);
robot1.setBuzzerFrequency(D5, S);
    delay(1+S);
robot1.setBuzzerFrequency(D6, S);
    delay(1+S);
robot1.setBuzzerFrequency(LA5, S);
    delay(1+E+S);
robot1.setBuzzerFrequency(Ab5, S);
    delay(1+E);
robot1.setBuzzerFrequency(G5, E);
    delay(1+S);
robot1.setBuzzerFrequency(F5, E);
    delay(1+S);
robot1.setBuzzerFrequency(D5, S);
    delay(1+S);
robot1.setBuzzerFrequency(F5, S);
    delay(1+S);
robot1.setBuzzerFrequency(G5, S);
    delay(1+S);
//    New Measure
//
/*
robot1.setBuzzerFrequency(C5, S);
    delay(1+S);
robot1.setBuzzerFrequency(C5, S);
    delay(1+S);
robot1.setBuzzerFrequency(D6, E);
    delay(1+E);
robot1.setBuzzerFrequency(LA5, S+E);
    delay(1+S+E);
robot1.setBuzzerFrequency(Ab5, S);
    delay(1+S+S);
robot1.setBuzzerFrequency(G5, E);
    delay(1+E);
robot1.setBuzzerFrequency(F5, E);
    delay(1+E);
robot1.setBuzzerFrequency(D5, S);
    delay(1+S);
robot1.setBuzzerFrequency(F5, S);
    delay(1+S);
robot1.setBuzzerFrequency(G5, S);
    delay(1+S);
//    New Measure
//    
//    
robot1.setBuzzerFrequency(B4, S);
    delay(1+S);
robot1.setBuzzerFrequency(D4, S);
    delay(1+S);
robot1.setBuzzerFrequency(D6, E);
    delay(1+E);
robot1.setBuzzerFrequency(LA5, S+E);
    delay(1+S+E);
robot1.setBuzzerFrequency(Ab5, S);
    delay(1+S+S);
robot1.setBuzzerFrequency(G5, E);
    delay(1+E);
robot1.setBuzzerFrequency(F5, E);
    delay(1+E);
robot1.setBuzzerFrequency(D5, S);
    delay(1+S);
robot1.setBuzzerFrequency(F5, S);
    delay(1+S);
robot1.setBuzzerFrequency(G5, S);
    delay(1+S);
    
    
// New Measure    
// Measure 4
robot1.setBuzzerFrequency(Bb4, S);
    delay(1+S);
robot1.setBuzzerFrequency(Bb4, S);
    delay(1+S);
robot1.setBuzzerFrequency(D6, E);
    delay(1+E);
robot1.setBuzzerFrequency(LA5, S+E);
    delay(1+S+E);
robot1.setBuzzerFrequency(Ab5, S);
    delay(1+S+S);
robot1.setBuzzerFrequency(G5, E);
    delay(1+E);
robot1.setBuzzerFrequency(F5, E);
    delay(1+E);
robot1.setBuzzerFrequency(D5, S);
    delay(1+S);
robot1.setBuzzerFrequency(F5, S);
    delay(1+S);
robot1.setBuzzerFrequency(G5, S);
    delay(1+S);
//  New Measure
//  Skip to Measure 13

robot1.setBuzzerFrequency(F6, E);
    delay(1+E);
robot1.setBuzzerFrequency(F6, S);
    delay(1+S);
robot1.setBuzzerFrequency(F6, S);
    delay(1+S);

    
    
    
    
    
  */  



