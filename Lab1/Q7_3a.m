clear all; %initialize
close all;
clc;

t = [-10:.01:10]; %interval goes from -10 to 10 using .01s intervals

x = z(t); %x(t) = new signal = z(t)

figure %generate figure
plot(t,x,'o-'); %plot z function
xlabel('t'); %x axis label for x(t)
ylabel('z'); %y axis label for x(t)
title('Q7.3a z(t) - New Signal'); %title of plot

