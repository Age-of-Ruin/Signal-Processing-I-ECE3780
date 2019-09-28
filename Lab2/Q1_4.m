clear all; %initialize
close all;
clc;

Ts = .01; %use small increment
t = [-10:Ts:10]; %interval
tdouble = [-20: Ts: 20]; %interval doubles when convolving

w1 = 1; % frequency
w2 = 10000;

x = sin(t); %input

h1 = 2*sin(w1.*t).*Step(t); %impulse response
h2 = 2*sin(w2.*t).*Step(t);

y1 = conv(x,h1); %output
y2 = conv(x,h2);

figure %generate figure
plot(tdouble, y1); %plot function
figure %generate figure
plot(tdouble,y2); %plot function

