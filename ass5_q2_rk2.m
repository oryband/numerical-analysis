function ys = ass5_q2_rk2(xs, y0, h, lambda)
% Return [y0,..yk] differential solution using RK2 method,
% to a pre-defined equation dy/dx = x + y
%
% xs: [x_0, .. x_n] vector
% y0: y_0 value
% h: Step size between x_i, x_(i+1)
% lambda: Lambda vaule
%
% Execution example:
% >> ys = ass5_q2_rk2([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1], 1, 0.1, 2/3)

steps = length(xs);

ys = zeros(1, steps);
ys(1) = y0;

for i = 2:steps
    a1 = 1 - 1/(2*lambda);
    k1 = xs(i-1) + ys(i-1);

    a2 = 1 - a1;
    k2 = xs(i-1) + lambda*h + ys(i-1) + lambda*h*k1;

    ys(i) = ys(i-1) + h*(a1*k1 + a2*k2);
end
