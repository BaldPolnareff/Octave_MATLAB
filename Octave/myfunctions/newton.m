function [x N_iter] = newton(f, fdot, XGUESS, tol, maxiter)
% newton - Computes Newton's method until a specified convergence criteria is met
%          Returns the approximate root of FUN and the number of iterations 
% Syntax: [x N_iter] = newton(FUN, FUN_DER, XGUESS, tol, maxiter)

x = XGUESS; 
iter = 0; 

while (f(x)) > tol 
  x = x - f(x)/fdot(x);
  iter = iter + 1;
  if iter == maxiter
    x_stop = x
  end
end
  N_iter = iter; 
end