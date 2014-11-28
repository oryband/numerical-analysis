function [x,n] = ass2_q6_newton(p, xn, delta, n)
% Find root x using Newton's method. Also return number of iterations used.
%
% p: polynomial vector representing the function to find roots for.
% x0, x1: bracket borders
% delta: maximum tolerance value
%
% Execution examples:
% % >> [z n] = ass2_q3_newton([ 1 0 0 -((sqrt(2*sqrt(3)-3))^3) ], 0.1, 0.8, 0.01, 1)
% % >> [z n] = ass2_q3_newton([ 1 0 0 -((sqrt(2*sqrt(3)-3))^3) ], 0.1, 0.8, 0.0001, 1)

x = xn - polyval(p,xn)/polyval(polyder(p),xn);

if (abs(polyval(p,x)) > delta && abs(xn-x) > delta)
    [x,n] = ass2_q6_newton(p, x, delta, n+1);
end

end
