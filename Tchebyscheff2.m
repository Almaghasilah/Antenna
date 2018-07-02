%Tchebyscheff 2
clc
close
clear

%Given
theta = 0:0.01:2*pi;
lambda = 1;
d = lambda/2;
k = 2*pi/lambda;

%alpha = -k*d;   %endfire 
alpha =0;                %broadside 0
yeta = k*d*cos(theta)+alpha;

N = 12;
db = 40;

m = N-1;

down = 10^(db/20);
syms x;
eqn = chebyshevT(m,x);
sol = solve(eqn == down,x);
x0 = sol(1);  

xk = cos((2*(1:m)-1)*pi/(2*m));    %Xk0
xk_x0 = xk/double(x0);              %Xk0/Xk
yk_degree = 2*acosd(xk_x0);        %Degree
yk = 2*acos(xk_x0);                %rad


currents = abs(poly(exp(1i*yk))) 
E=0;

for i = 1:N
    E = E + currents(i)*exp(1i*yeta*i-1);
end
E = abs(E);
polar(theta, E)