clear all; %initialize
close all;
clc;

Ts = .01; %use small increment
To = 5;
t = [-4:Ts:24]; %interval

power = mean((z(t).^2)*Ts) %power of z(t) = (x1^2*Ts + x2^2*Ts + ...)/(To1 + To2 + ...)

figure
plot(t,z(mod(t,To)),'o-'); %plot power function
xlabel('t'); %x axis label for power function
ylabel('P'); %y axis label for power function
title('Q7.3d P(t) - Power'); %title for plot