clear all; %initialize
close all;
clc;

t = [-10:.01:10]; %interval goes from -10 to 10 using .01s intervals
x = f(t); %function x(t) = f(t) - defined separately

figure %generate figure
plot(t,x,'o-'); %plot x function
xlabel('t'); %x axis label for x(t)
ylabel('x'); %y axis label for x(t)
title('Q7.1a x(t)'); %title for plot