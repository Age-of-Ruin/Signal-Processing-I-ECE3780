clear;
fs = 2500;
f1 = 500;
f2 = 1000;
n0 = 1000;
f0 = fs/n0;
k = 0:n0-1;
freq = (-n0/2 + 1: n0/2)*(f0); %frequency domain
x1 = sin(2*pi*f1*k/fs);
x2 = sin(2*pi*f2*k/fs);
x3 = x1 + x2;

xf3 = abs(fft(x3,n0));

h = zeros(1,1000);
h(201) = 1;
h(801) = 1;
xfilt = xf3.*h;
xfilt = real(ifft(xfilt,n0));

plot(k,xfilt,k,x1);