clear all; %initialize
close all;
clc;

t = [-10:.01:10]; %interval goes from -10 to 10 using .01s intervals

u = Step(t); %u = step function

figure %generate figure
plot(t,u,'o-'); %plot u function
xlabel('t'); %x axis label for u(t)
ylabel('u'); %y axis label for u(t)
title('Q7.2a u(t) - Step'); %title for plot

r = Ramp(t); %r = ramp function

figure %generate figure
plot(t,r,'o-'); %plot r function
xlabel('t'); %x axis label for r(t)
ylabel('r'); %y axis label for r(t)
title('Q7.2a r(t) - Ramp'); %title for plot