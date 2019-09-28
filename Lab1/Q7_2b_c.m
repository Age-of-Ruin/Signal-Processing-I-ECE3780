clear all; %initialize
close all;
clc;

t = [-5:0.01:5]; %interval goes from -10 to 10 using .01s intervals
f = 2*Ramp(t+2.5)-5*Ramp(t)+3*Ramp(t-2)+Step(t-4); %f(t) = given signal 
fn = 2*Ramp(-t+2.5)-5*Ramp(-t)+3*Ramp(-t-2)+Step(-t-4); %f(-t)

figure %generate figure
plot(t,f,'o-'); %plot f function
xlabel('t'); %x axis label for f(t)
ylabel('f'); %y axis label for f(t)
title('Q7.2b f(t) - New Signal'); %title for f(t)

even = (1/2)*(f+fn); %even component of f = 1/2(f(t)+f(-t))

figure %generate figure
plot(t,even,'o-'); %plot even function
xlabel('t'); %x axis label for even
ylabel('fe(t)'); %y axis label for even
title('Q7.2c fe(t) - Even Component of f'); %title for even

odd = (1/2)*(f-fn); %odd component of f = 1/2(f(t)-f(-t))

figure
plot(t,odd,'o-'); %plot odd function
xlabel('t'); %x axis label for odd
ylabel('fo(t)'); %y axis label for odd
title('Q7.2c fo(t) - Odd Component of f'); %title for odd