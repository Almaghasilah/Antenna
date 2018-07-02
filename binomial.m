%Binomial array
clc 
clear
close


%Given
lambda =1;     
theta = 0:0.01:2*pi;
k = 2*pi/lambda;

%Binomial equation
d =lambda/2;   %Wavelength
n=12;          %Elemants spaced number 
alpha=0;       %broadside
%alpha =-d*k;  %Endfire
phi = (2*pi/lambda)*d*cos(theta) + alpha;
E =abs(1+exp(i*phi)).^(n-1);
figure
polar(theta,E)