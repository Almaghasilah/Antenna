
%Given
lambda =1;
k = 2*pi/lambda;
theta = 0:0.01:2*pi;

%lambda/2
L = 6*lambda;
E = abs(30*(sin(theta)./(1-cos(theta)).*(2-2*cos(k*L*(1-cos(theta)))).^(1/2)));

%Plot
figure(1)
polar(theta,E)