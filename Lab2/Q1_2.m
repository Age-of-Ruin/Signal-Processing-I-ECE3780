clear all; %initialize
close all;
clc;


Ts = .01; %use small increment
t = [-10:Ts:10]; %interval
tdouble = [-20: Ts: 20]; %interval doubles when convolving


x = Step(t) - Step (t-2); %input

h = Step(t-1) - Step (t-3); %impulse response

y =  conv(x,h); %output

figure %generate figure 
plot(tdouble, y); %plot function
