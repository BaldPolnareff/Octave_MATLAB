clc
clear 

f = @(x) x.^4 + 4*x; 
fdot = @(x) 4*x.^3 + 4; 

interval = [-1 2]; 

x1 = 2; 
x2 = 1; 

N_iter = 4; 

x_secant = secant(f, x1, x2, N_iter);
x_newton = newton(f, fdot, x1, 1e-8);
x_fzero = fzero(f, x1);