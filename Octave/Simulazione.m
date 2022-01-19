clc
clear all

%% Es 1

%n = 0:1000; 
%f = @(n) (-1).^n .* (n.^2 + 3*n);
%
%S = sum(f(n));

%% Es 2

%x0 = -1; 
%
%f = @(x) log(-x) - x.^5;
%
%sol = fzero(f, x0)

%% Es 3

%interval = [0 1]; 
%f = @(x) exp(exp(x));
%
%I = integral(f, interval(1), interval(2));

%% Es 6

%x = [-7 -5 -3 -1 1 3 5 7];
%s_dot = [15 7];
%y = [s_dot(1) -60.3 -30.5 -12.7 -2.1 -1.9 -7.3 -5.5 8.3 s_dot(2)];
%x_p = 0;
%
%s = spline(x, y, x_p)

%% Es 10 

%phi = @(x) -exp(-x.^2) .* sin(5*x) - 0.3; 
%tol = 10^(-3); 
%
%x0 = -1; 
%xx = -1:0.01:1; 
%x = phi(x0);
%k = 1; 
%
%while abs(x - x0) >= tol 
%    x0 = x 
%    x = phi(x0);
%    k = k + 1; 
%end

%% Es 8

%Y0 = [0; 2; 4; 8]; 
%t = [1 6]; 
%ode_fun = @(t, z) [z(2); z(3); z(4); -4*z(3) - 4*z(1) + t.^2 + 1];
%
%[T1 Z1] = ode45(ode_fun, t, Y0);
%[T2 Z2] = ode15s(ode_fun, t, Y0);


%% Es 4

%n = 2500; 
%A = 5*eye(n);
%A(:, n) = 1; 
%A(n, :) = 1; 
%A(n, n) = n; 
%
%b = ones(n, 1);
%x = zeros(n, 1);
%r = b - A * x; 
%k = 1; 
%res = norm(r)/norm(b);
%tol = 1e-8;
%
%D = diag(diag(A)); 
%E = A - D; 
%
%while res > tol 
%    x = D \ (b - E * x); 
%    res = b - A * x; 
%    k = k + 1; 
%end

%% Es 5

%n = 256; 
%alpha = 2; 
%A = spdiags([alpha * ones(n, 1) -ones(n, 1) -ones(n, 1)], [0 1 -1], n, n);
%b = ones(n, 1);
%
%x = pcg(A, b);

%% Es 7 

N = [4 8 16 32]; 
f = @(x) exp(-x.^2);
I_n = integral(f, -1, 1); 
err_N = zeros(4, 1); 
range = [-1 1];

for N = [4 8 16 32]
    h = abs(range(2) - range(1))/N; 
    x = -1:h:1; 
    I_trap = 
    err_N(t) = abs(I_trap - I);
    t = t + 1; 
end

for t = 1:4
    err_N(t+1)/err_N(t)
end