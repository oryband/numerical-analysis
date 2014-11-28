function [z,n] = ass2_q1_bisection(p, x0, x1, delta, n)
% Find root z using bisection method. Also return number of iterations used.
%
% p: polynomial vector representing the function to find roots for.
% x0, x1: bracket borders
% delta: maximum tolerance value
%
% Execution examples:
% % >> [z n] = ass2_q1_bisection([ 1 0 0 -((sqrt(2*sqrt(3)-3))^3) ], 0.1, 0.8, 0.01, 1)
% % >> [z n] = ass2_q1_bisection([ 1 0 0 -((sqrt(2*sqrt(3)-3))^3) ], 0.1, 0.8, 0.0001, 1)

z = (x0+x1)/2

if (abs((x1-x0)/2) > delta)
    if (sign(polyval(p,x0)) ~= sign(polyval(p,z)))
        [z,n] = ass2_q1_bisection(p, x0, z, delta, n+1);
    else
        [z,n] = ass2_q1_bisection(p, z, x1, delta, n+1);
    end
end
