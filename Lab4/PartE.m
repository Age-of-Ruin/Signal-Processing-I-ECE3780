clear all; close all; clc;
%Loading and defining relevant constants and signals
load touch;
n = 0:999;
N=2048;
K=0:N-1;
w = 2*pi*K/N;
space = zeros(1,100);
rowvec = [0.5346 0.5906 0.6535 0.7217
          0 0 0 0];
colvec = [0.9273 1.0247 1.1328
          0 0 0];
%Finds the k values of wk which correspond to tt frequencies
for i = 1:4
    sinplot = abs(fft(sin(rowvec(1,i).*n),N));
    [pks,locs] = findpeaks(sinplot);
    [~, vv] = sort(pks);
    rowvec(2,i) = locs(vv(length(vv)-1));
end
for i = 1:3
    sinplot = abs(fft(sin(colvec(1,i).*n),N));
    [pks,locs] = findpeaks(sinplot);
    [~, vv] = sort(pks);
    colvec(2,i) = locs(vv(length(vv)-1));
end

%Defing digit values
d0 = sin(0.7217.*n) + sin(1.0247.*n);
d1 = sin(0.5346.*n) + sin(0.9273.*n);
d2 = sin(0.5346.*n) + sin(1.0247.*n);
d3 = sin(0.5346.*n) + sin(1.1328.*n);
d4 = sin(0.5906.*n) + sin(0.9273.*n);
d5 = sin(0.5906.*n) + sin(1.0247.*n);
d6 = sin(0.5906.*n) + sin(1.1328.*n);
d7 = sin(0.6535.*n) + sin(0.9273.*n);
d8 = sin(0.6535.*n) + sin(1.0247.*n);
d9 = sin(0.6535.*n) + sin(1.1328.*n);

%Defining x values to be checked
[phonenum, newsignal] = ttdecode(hardx2);
%Determining the energy of a signal


