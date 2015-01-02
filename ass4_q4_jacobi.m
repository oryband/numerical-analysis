function x = ass4_q4_jacobi(x_1, dlu, db, n)
% Return solution for Jacobi iterative method.
% Uses recursive iterations.
%
% x_1: x^(-1) (previous iteration x, not the inverse of x)
% dlu = D^-1 * (L+U)
% db = D^-1 * b
% n: number of iterations to calculate
%
% Execution example, starting with:
%   x0 = [1 2 2]
%   dlu = (1/40)*[ 0 -10 10 ; -20 0 5 ; -16 8 0 ]
%   db = (1/40)*[ 70 ; 105 ; 120 ]
%   n = 10
%
% >> x = ass4_q4_jacobi([1 ; 2 ; 2], (1/40)*[ 0 -10 10 ; -20 0 5 ; -16 8 0 ], (1/40)*[ 70 ; 105 ; 120 ], 10)

if (n > 0)
    x = ass4_q4_jacobi(-dlu*x_1 + db, dlu, db, n-1);
else
    x = x_1;
end

end
