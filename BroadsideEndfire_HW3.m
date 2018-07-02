%EMG Course
%Homework#3

%Given:
Lambda =1;     
theta = 0:0.01:2*pi;
k = 2*pi/lambda;

%Brodadside
% d =Lambda/2; %Wavelength
% n=32;        %Elemants spaced number 
% alpha =0;
% Phi = (2*pi/Lambda)*d*cos(theta) + alpha;
% E =  abs(sin(n*Phi/2)./sin(Phi/2));
% figure(1)
% polar(theta,E)

%Endfire
d2 =Lambda/4;
n2=19;
alpha2 =-d2*k;
Phi = (2*pi/Lambda)*d2*cos(theta) + alpha2;
E =  abs(sin(n2*Phi/2)./sin(Phi/2));
figure(2)
polar(theta,E)

%Locations of null points
%Broadside:
m=1:4;
num = zeros(1:m);
theta =  acosd(2*m*pi/(n*k*d));
num = theta;
%Endfire:
m2=1:21;
num2 = zeros(1:m2);
theta2 =  acosd(2*m2*pi/(n2*k*d2) - alpha2/(k*d2));
num2 = theta2;

%Broadside: width of the principal maximum(PM).
w = 2*lambda/(n*d);

%Endfire: Width of the principal maximum (PM).
w2 = 2* sqrt((2*lambda)/(n2*d2));

