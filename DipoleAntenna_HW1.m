%EMG Course
%Homework#1

%Given
lambda =1;
k = 2*pi/lambda;
theta = 0:0.01:2*pi;

%5/2lambda
L =2*lambda;
E = abs(60*((cos(k*L/2*cos(theta))- cos(k*L/2))./sin(theta)));
figure(1)
polar(theta,E)

%5*lambda/2
L =10*lambda;
E = abs(60*((cos(k*L/2*cos(theta))- cos(k*L/2))./sin(theta)));
figure(2)
polar(theta,E)