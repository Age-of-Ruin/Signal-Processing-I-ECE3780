clear all; %initialize
close all;
clc;

Ts = .01; %use small increment
t = [-10:Ts:10]; %interval
tdouble = [-20: Ts: 20]; %interval doubles when convolving

x1 = Ramp(t);
x2 = Step(t-10) - Step (t-15); %input

h1 = Ramp(-t);
h2 = Step(-t-10) - Step (-t-15); %impulse response

y1 = conv(x1,h1); %output
y2 = conv(x2,h2);

figure %generate figure
plot(tdouble, y1); %plot function
figure %generate figure
plot(tdouble,y2); %plot function