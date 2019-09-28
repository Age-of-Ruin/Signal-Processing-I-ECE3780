clear all; %initialize
close all;
clc;

Ts = .01; %use small increment
t = [-10:Ts:10]; %interval
tdouble = [-20: Ts: 20]; %interval doubles when convolving

w1 = .01; %frequency
w2 = 1000;

x1 = sin(w1.*t); %input
x2 = sin(w2.*t);

h1 = Step(t)-Step(t-.01); %impulse response
h2 = Step(t)-Step(t-10);

y1 = conv(x1,h1); %output
y2 = conv(x2,h1);
y3 = conv(x1,h2); 
y4 = conv(x2,h2);

figure %generate figure
plot(tdouble, y1); %plot function
figure %generate figure
plot(tdouble,y2); %plot function
figure %generate figure
plot(tdouble, y3); %plot function
figure %generate figure
plot(tdouble,y4); %plot function