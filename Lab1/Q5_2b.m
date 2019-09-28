clear all; %initialize
close all;
clc;

Ts = 0.01; %sample time
t = [-2:Ts:3]; %t goes from -2s to 3s by steps of .01s
w = (t>=0); %step function
y1 = (exp(-3*t) - exp(-6*t)); %function statement
y2 = y1.*w; %given function * step function

figure %generate figure
plot(t,y2,'o-'); %plot function
xlabel('t'); %x axis label for y2(t)
ylabel('y'); %y axis label for y2(t)
title('Q5.2b y(t)'); %title for plot