function [ xrect ] = xrect( t )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
xrect = 4*step(t) - 2*step(t-1) - 2*step(t-2);

end

