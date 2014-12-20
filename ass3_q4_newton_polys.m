function ps = ass3_q4_newton_polys(xs, ys)
% Return Newton's interpolation polynomials {p_1,..,p_(n-1)}
%
% xs: [x_1,..,x_n]
% ys: [y_1,..,y_n]
%
% Execution example:
% % >> ps = ass3_q4_newton_polys([-pi/4 0 pi/4], [0 1 0])

% init polynomials vector
n = length(xs);
ps = cell(1,n);

% init p_0
y0 = ys(1);
syms x;
ps{1} = symfun(y0, x);

for i = 2:n
    % p(i-1)
    pi_1 = ps{i-1};

    xi = xs(i);
    yi = ys(i);

    % calculate C_i
    c_numerator = yi - pi_1(xi);
    c_denominator = prod(xi-xs(1:i-1));
    c_i = c_numerator/c_denominator;

    % calculate p_i
    ps{i} = pi_1 + prod(x-xs(1:i-1)) * c_i;
end
