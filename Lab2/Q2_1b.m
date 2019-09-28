clear all; %initialize
close all;
clc;

[Y Fs] = audioread('echo2.wav');
x = [0 0 0 2 3 1 0 0 0 0 0 1 1.5 0.5 0 0 0 0];

figure
plot(Y);
figure
length(x)
for i = 0 : length(x)
    xreverse(i) = x(length(x)-i)
end

z = conv(x,xreverse)

subplot(1,3,2);
plot(z)

Td = 1500;
A = 0.5;
N=30;
h = zeros(1,length(Td*N));

for k = 0 : N
    h(k*Td+1) = (-(A))^k;
end

subplot(1,3,3);
plot(conv(h,Y));
