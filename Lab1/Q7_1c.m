clear all; %initialize
close all;
clc;

t = [-10:.01:10]; %interval goes from -10 to 10 using .01s intervals

h = f(-4*t + 2); %function h(t) = x(-4t+2)

figure %generate figure
plot(t,h,'o-'); %plot h function
xlabel('t'); %x axis label for h(t)
ylabel('h'); %y axis label for h(t)
title('Q7.1c h(t)'); %title for h(t)