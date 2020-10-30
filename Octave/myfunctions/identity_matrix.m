% This function generates a (square) diagonal matrix with ones on its main diagonal. Expected input is its dimension N.

function [I] = identity_matrix(N)
	if N<=0
		printf('Expected input is a positive, non null integer\n')
	else	
		V_el=N;
		V=ones(1,V_el);
		I=diag(V,N,N);
	end	

end	





