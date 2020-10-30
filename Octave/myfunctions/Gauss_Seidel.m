% Implementation of the Gauss-Seidel iteration method

function [x_appr] = Gauss_Seidel (A, b, tol, max_iter)

	% Check whether A is a square matrix
	[N M] = size (A);
	if N  ~= M
		error ('A should be a square Matrix!')
	end

	% Check whether A is diagonally dominant: this should guarantee convergence

	for i = 1 : N
		row = abs (A (i, :));
		comp = sum (row) - row (i);
		if row (i) <= comp
			error ('A should be a diagonally dominant matrix')
		end
	end

	% Check whether b is a column vector of a compatible size

	[n m] = size (b);
	if ~(n == N && m == 1)
		error ('b should be a column vector compatible with A')
	else
		D = diag (diag (A));
		E = tril (A, -1);
		F = triu (A, +1);
		LU = E + F;

		x_0 = zeros (N, 1); % Initializing first iteration vector (arbitrarily)

		% Begin iterarion

		k = 0; x_appr = x_0; x_prev = x_0; difference = ones (N, 1); % Initializing involved variables
		err = norm (difference);
		while abs (err) >= tol
			x_prev = x_appr;
			x_appr = D \ (b - E * x_appr - F * x_prev);
			difference = x_appr - x_prev;
			err = norm (difference);
			if k > max_iter
				error ('Iterations limit exceeded, you can change it manually')
			end
			k = k + 1;
		end
			disp ('The number of iterations is'), k
	end
end

