function ys = ass5_q2_euler(xs, y0, h)
% Return [y0,..yk] differential solution using Euler's method,
% to a pre-defined equation dy/dx = x + y
%
% xs: [x_0, .. x_n] vector
% y0: y_0 value
% h: Step size between x_i, x_(i+1)
%
% Execution example:
% >> ys = ass5_q2_euler([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1], 1, 0.1)

steps = length(xs);

ys = zeros(1, steps);
ys(1) = y0;

for i = 2:steps
    ys(i) = ys(i-1) + (h * (xs(i-1) + ys(i-1)));
end
