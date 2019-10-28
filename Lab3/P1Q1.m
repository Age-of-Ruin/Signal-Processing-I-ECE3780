clear;
x = zeros(1, 200); %Original Function
x(1:12)=[1 1 1 1 -1 -1 1 1 -1 1 -1 1];
xdelay = zeros(1, 200); %Delayed Function
xdelay(21:32)=[1 1 1 1 -1 -1 1 1 -1 1 -1 1]; 

figure
subplot(2,1,1);
plot(x);
title(['Original Signal']);
xlabel('Time'), ylabel('x(t)');

subplot(2,1,2);
plot(xdelay);
title(['Delayed Signal']);
xlabel('Time'), ylabel('xdelay(t)');