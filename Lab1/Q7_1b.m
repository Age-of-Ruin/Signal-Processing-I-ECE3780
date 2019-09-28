clear all; %initialize
close all;
clc;

t = [-10:.01:10]; %interval goes from -10 to 10 using .01s intervals

g = f(2.*t - 5); %function g(t) = x(2t-5)

figure %generate figure
plot(t,g,'o-'); %plot g function
xlabel('t'); %x axis label for g(t)
ylabel('g'); %y axis label for g(t)
title('Q7.1b g(t)'); %title for plot