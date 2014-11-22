function [ n,R ] = solve_quadratic( a,b,c )
%Quadratic equation solution
%   Uses Vietta's formula for calcing results.
%   Handles cases where b^2 >> 4ac

% Don't return solutions in the complex case.
discr = b^2-4*a*c;
if (discr < 0)
    R = [];
    n = 0;
elseif (discr == 0)  % Alternative alg. repr. of Vietta
    R = [(-2*c)/b];
    n = 1;
else  % discr > 0
    sd = sqrt(discr);
    R = [(-2*c)/(b+sd) (-b-sd)/(2*a)];
    n = 2;
end
end
