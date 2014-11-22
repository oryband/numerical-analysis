function [ n,R ] = bad_solve_quadratic( a,b,c )
%Quadratic equation solution
%   Uses Vietta's formula for calcing results.

% Don't return solutions in the complex case.
discr = b^2-4*a*c;
if (discr < 0)
    R = [];
    n = 0;
elseif (discr == 0)
    R = [b/(2*a)];
    n = 1;
else  % discr > 0
    sd = sqrt(discr);
    R = [(-b+sd)/(2*a) (-b-sd)/(2*a)];
    n = 2;
end
end
