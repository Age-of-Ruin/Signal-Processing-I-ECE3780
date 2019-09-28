clear;
Ts = 1;
t = [1: Ts: 100];
x = [Step(t) - Step(t-11)] + [0.5*Step(t-50) - 0.5*Step(t-60)];
Ey = zeros(10,10);
Td = 10;
A = .5;
N = 5;

for i = 1 : length(Td)
    h = zeros(1,length(Td*N));
    for j = 1 : length(A)
        for k = 0 : N
            h(k*Td(i)+1) = (-(A(j)))^k;
        end
    y = Ts*conv(h,x);
    Ey(i,j) = sum(y.^2);
    end
end

%figure;
%stem(x);
figure;
stem(h);
%figure;
%stem(y);
%figure;
%mesh(Td,A,Ey);


















%Ey = zeros(10,10);
%Td = 10:10:100;
%A = 0.1:0.1:1;
%N = 5;

%for i = 1 : length(Td)
    %h = zeros(1,length(Td*N));
    %for j = 1 : length(A)
        %for k = 0 : N
            %h(k*Td(i)+1) = (-(A(j)))^k;
        %end
    %y = Ts*conv(h,x);
    %Ey(i,j) = sum(y.^2);
    %end
%end


%subplot(1,3,2);
%stem(h);
%subplot(1,3,3);
%stem(y);
%mesh(Td,A,Ey);
