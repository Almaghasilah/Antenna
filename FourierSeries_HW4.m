%EMG Course
%Homework#4
theta = 0:0.01:2*pi;
lambda =1;
k1 = 2*pi/lambda;
d = lambda/4;
m_A=9;
m_B=10;
m_C=5;
m_D=8;
m_E=12;


alpha = -d*k1; %no side lobes.
Phi =(2*pi/lambda)*d*cos(theta) + alpha;
sum =0;
%A:5 Elemants 
for k=1:1:m_A
    sum = sum+ 1/k*sin(k*pi/2)*cos(k*Phi);
end
F_A = 1/2 + 2/pi* sum;

%B:9 Elemants 
for k=1:1:m_B
    sum = sum+ 1/k*sin(k*pi/2)*cos(k*Phi);
end
F_B = 1/2 + 2/pi* sum;

%C:11 Elemants 
for k=1:1:m_C
    sum = sum+ 1/k*sin(k*pi/2)*cos(k*Phi);
end
F_C = 1/2 + 2/pi* sum;

%D:17 Elemants 
for k=1:1:m_D
    sum = sum+ 1/k*sin(k*pi/2)*cos(k*Phi);
end
F_D = 1/2 + 2/pi* sum;

%E:25 Elemants 
for k=1:1:m_E
    sum = sum+ 1/k*sin(k*pi/2)*cos(k*Phi);
end
F_E = 1/2 + 2/pi* sum;
figure(1)
polar(theta,F_A);
title('Fourier Series');
xlabel('\phi(Degree)');
ylabel('E(Normalized)');

% figure(2)
% polar(theta,F_B);
% title('Fourier Series - 9 Elements');
% xlabel('\phi(Degree)');
% ylabel('E(Normalized)');
% 
% figure(3)
% polar(theta,F_C);
% title('Fourier Series - 11 Elements');
% xlabel('\phi(Degree)');
% ylabel('E(Normalized)');
% 
% figure(4)
% polar(theta,F_D);
% title('Fourier Series - 17 Elements');
% xlabel('\phi(Degree)');
% ylabel('E(Normalized)');
% 
% figure(5)
% polar(theta,F_E);
% title('Fourier Series - 25 Elements');
% xlabel('\phi(Degree)');
% ylabel('E(Normalized)');