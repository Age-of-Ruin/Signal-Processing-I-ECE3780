clear all; %initialize
close all;
clc;

Ts = .01; %use small increment
t = [-10:Ts:10]; %interval
tdouble = [-20: Ts: 20]; %interval doubles when convolving

x = Step(t) - Step (t-2); %input

h1 = Step(t-1) - Step (t-3); %impulse response
h2 = 3 * (Step(t-2-1) - Step (t-2-3));

y =  conv(x,h1); %output
z = conv(x,h2);

figure %generate figure 
plot(tdouble, y); %plot function
figure %generate figure 
plot(tdouble, z); %plot function