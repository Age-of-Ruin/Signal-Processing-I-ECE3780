clear all; %initialize
close all;
clc;

Ts = .01; %interval goes from -10 to 10 using .01s intervals
t = [-10:Ts:10]; %interval

energy = sum((z(t).^2)*Ts) %energy of z(t) = (x1^2*Ts + x2^2*Ts + ...)

figure %generate figure (not needed in question - proof of concept)
plot(t,energy,'o-'); %plot energy function
xlabel('t'); %x axis label for energy function
ylabel('E'); %y axis label for energy function
title('Q7.3b E(t) - Energy'); %title for plot