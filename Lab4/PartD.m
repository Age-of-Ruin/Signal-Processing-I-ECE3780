clear all; close all; clc;


%Declaring relevant constants
Alpha = 0.25;
Td = 50;


%Loads and plots the given image
load lab4image;
figure
imagesc(A);
colormap gray;
axis image;


[M,N] = size(A);
K=0:N-1;

% B is the fixed image
B=zeros(M,N);

%For each row, take the Fourier transform of the given image
%Then divide each element in the row by the H(w) function
%Then use the inverse Fourier transform to get the fixed image
for i = 1 : M 
    % H(w) Function
    H = ones(1,N) + Alpha*exp(1i*2*pi*K*Td/N) + Alpha*exp(1i*2*pi*K*Td/N);
    
    f = fft(A(i,:));
     
    B(i,:) = abs(ifft(f./H));
end

%Plot the fixed image
figure
imagesc(B);
colormap gray;
axis image;