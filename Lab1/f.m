function x = f(t)
a  = (t>=-1) & (t<2); %first condition
b  = (t>=2) & (t<3); %second condition
c  = (t>=3) & (t<=6); %third condition

x = 2.*a + b - .5.*c; %function to return