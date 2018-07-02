%Tchebyscheff Polynomial.
clc
clear
close

%Given
lambda =1;     
theta = 0:0.01:2*pi;
k = 2*pi/lambda;
n=10;          %Elemants spaced number 
m = n-1;
ka = 1:m;
sl = 19.1;   %Side lobe level in dB 
b = 10^(sl/20);
%Tchebyscheff
d =lambda/2;   %Wavelength
alpha=0;       %broadside
%alpha =-d*k;  %Endfire
phi = (2*pi/lambda)*d*cos(theta) + alpha;
delta = (2*ka-1)/(2*m);
xko = cos(delta);
%xo = xko./(cos(phi));