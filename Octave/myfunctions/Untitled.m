clc
clear 

f = @(x) x.^2 .* exp(x); 
fdot = @(x) 2*x .* exp(x) + exp(x) .* x.^2;
x1 = 1; 

[x N] = newton(f, fdot, x1, 1e-8, 4); 