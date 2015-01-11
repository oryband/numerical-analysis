function ys = ass5_q2_exact(xs)
% Return [y0,..yk] evaluation for the solution
% to a pre-defined equation dy/dx = x + y
%
% xs: [x_0, .. x_n] vector
%
% Execution example:
% >> ys = ass5_q2_exact([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1])

steps = length(xs);
ys = zeros(1, steps);

for i = 1:steps
    x = xs(i);
    ys(i) = 2*exp(x) - x - 1;
end

