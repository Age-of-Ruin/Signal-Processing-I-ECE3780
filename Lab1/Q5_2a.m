clear all; %initialize
close all;
clc;

Ts = 0.01; %sample time
t = [0:Ts:5]; %t goes from 0s to 5s by steps of .01s
y = (exp(-3*t) - exp(-6*t)); %function statement

figure %generate figure
plot(t,y,'o-'); %plot y function
xlabel('t'); %x axis label for y(t)
ylabel('y'); %y axis label for y(t)
title('Q5.2a y(t)'); %title for y(t)