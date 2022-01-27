function MATRIX = tridiag(SUBD_vector, MAIND_vector, SUPERD_vector)
% Return a tridiagonal matrix
%
%
% Long description

subd = SUBD_vector;
maind = MAIND_vector;
superd = SUPERD_vector;

if length(subd) == length(maind) == length(superd)
    N = length(subd);
end

else
    error('input vectors should be the same size')
end
   


end