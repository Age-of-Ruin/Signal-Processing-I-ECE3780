clear all; %initialize
close all;
clc;

Ts = .01; %use small increment
t = [-10:Ts:10]; %interval
tdouble = [-20: Ts: 20]; %interval doubles when convolving

y =  conv(Step(t), Ramp(t)); %output

figure %generate figure 
plot(tdouble, y); %plot function
