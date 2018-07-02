phi = linspace(0,2*pi,1000);
lambda = 1;
d = lambda/4;
k = 2*pi/lambda;

alpha = -k*d;  %endfire -k*d   broadside 0
yeta = k*d*cos(phi)+alpha;

N = 9;
L = (sqrt(3)-2)/2;

E = L;

for i = 1:N
    E = E + (2/pi)*(1/i)*sin(i*pi*L)*cos(2*i*yeta);
    a(i) = (2/pi)*(1/i)*sin(i*pi*L); 
end

a/2

polar(phi,abs(E))