clear all; %initialize
close all;
clc;

Ts = 0.01; %sample time
t = [-2:Ts:3]; %t goes from -2s to 3s by steps of .01s
w = (t>=0) & (t<=1); %bounding step functions;
y1 = (exp(-3*t) - exp(-6*t)); %function statement
z = y1.*w; %z = function * u(t)

figure %generate figure
plot(t,z,'o-'); %plot function
xlabel('t'); %x axis label for z(t)
ylabel('z'); %y axis label for z(t)
title('Q5.2c z(t)'); %title for plot