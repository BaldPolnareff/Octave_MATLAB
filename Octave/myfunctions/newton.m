function x =  newton(fun, fun_derivative, x_guess, N_steps)
  % Computes f(x) = 0 using Newton's method
  x0 = xguess;
  x = x0;
  for i = 1:N_steps
    x = x - fun(x) / fun_derivative(x);
  end
endfunction