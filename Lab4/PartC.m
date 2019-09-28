clear;
t = -3: 0.1: 3;
x = xrect(t);
y = 0.1*fft(x);
plot(t,y);
