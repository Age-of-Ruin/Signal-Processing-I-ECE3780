function z = f(t)
a  = (t>=0) & (t<1); %first condition
b  = (t>=1) & (t<2.5); %second condition


z = (a.*t) + (b.*exp(-5*(t-1))); %function to return