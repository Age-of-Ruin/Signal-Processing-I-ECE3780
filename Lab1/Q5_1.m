clear all; %initialize
close all;
clc;
 
To = (2*pi)/12; %period of signal
Ts = To/12; %sample time
t = [0: Ts:10*To-Ts]; %t yeilds 120 samples (12 per period)
x = 5*sin(12*t); %x(t) = A*sin(Wo*t)
z = x.^2; %z(t) = x(t)^2

subplot(2,1,1); %subplot 1
plot(t,x,'o-'); %plot x function
xlabel('t'); %x axis label for x(t)
ylabel('x'); %y axis label for x(t)
title('Q5.1b x(t)'); %title for x(t)

subplot(2,1,2); %subplot 2
plot(t,z,'o-'); %plot z function
title('Q5.1c z(t)'); %title for z(t)
xlabel('t'); %x axis label for z(t)
ylabel('z'); %y axis label for z(t)
