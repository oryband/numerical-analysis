function [e,v] = ass4_q6_power(A, v_1, e_1, n)
% Return max-eigenvalue and eigenvector using Power iterative method.
% Uses recursive iterations.
%
% A: Matrix s.t. Av=Lv (L is for Lambda)
% x_1: previous iteration eigenvector
% e_1: previous iteration eigenvalue
% n: number of iterations to calculate
%
% Execution example, starting with:
%   v = [ 1 1 1 ]
%   e = 0
%   A = [ 5 -1 7 ; -1 -1 1; 7 1 5 ]
%   n = 9
%
% >> [e,x] = ass4_q6_power([ 5 -1 7 ; -1 -1 1 ; 7 1 5 ], [ 1 ; 1 ; 1 ], 0, 9)

if (n > 0)
    Av = A*v_1;

    % Maximum value of A*x is the current iteration's eigenvalue
    e = max(Av);

    % Scale v
    v = Av/e;

    % Continue to next iteration
    [e, v] = ass4_q6_power(A, v, e, n-1);
else
    e = e_1;
    v = v_1;
end

end
