function x = secant(fun, x_firstguess, x_secondguess, N_steps)
  % Solves f(x) = 0 using n steps of the secant method and returns the approximate solution x; 
  x0 = x_firstguess;
  x1 = x_secondguess;
  y0 = fun(x0);
  y1 = fun(x1);

  i = 1;
  for i = 1:N_steps 
    x = x1 - y1 * (x1 - x0)/(y1 - y0);
    y = fun(x);
    % Now update the numbers for the next step
    x0 = x1;
    y0 = y1; 
    x1 = x; 
    y1 = y; 
  end
endfunction