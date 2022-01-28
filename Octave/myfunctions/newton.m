function [x N_iter] = newton(f, fdot, XGUESS, tol)
% newton - Computes Newton's method until a specified convergence criteria is met
%          Returns the approximate root of FUN and the number of iterations 
% Syntax: [x N_iter] = newton(FUN, FUN_DER, XGUESS, tol)

x = XGUESS; 
iter = 1; 

while (f(x)) > tol 
  iter = iter + 1;
  x = x - f(x)/fdot(x);
end
  N_iter = iter; 
end