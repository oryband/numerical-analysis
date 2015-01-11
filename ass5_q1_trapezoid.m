function I = ass5_q1_trapezoid(m)
% Return I^num according to q1, by using trapezoid rule.
%
% m: Number of sub-intervals.
%
% Execution example:
% >> I = ass5_q1_trapezoid(13)

elements = zeros(1, m-1);

for i = 1:(m-1)
    elements(i) = 1 + (i/m)^2;
end

I = (1/m) * log(sqrt(2) * prod(elements));

end
