clear all; %initialize
close all;
clc;

Ts = .01; %use small increment
To = 2.5;
t = [-2:Ts:12]; %interval

power = mean((z(t).^2)*Ts) %power of z(t) = (x1^2*Ts + x2^2*Ts + ...)/(To1 + To2 + ...) 

figure %generate figure (not needed in question - proof of concept)
plot(t,z(mod(t,To)),'o-'); %plot power function
xlabel('t'); %x axis label for power function
ylabel('P'); %y axis label for power function
title('Q7.3c P(t) - Power'); %title for plot