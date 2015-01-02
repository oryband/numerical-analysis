function [x, y, z] = ass4_q4_gauss_seidel(x_1, y_1, z_1, n)
% Return solution for Gauss-Seidel iterative method, for a predefined matrix.
% Uses recursive iterations.
%
% x_1: x1(-1) previous iteration of x1
% y_1: same for y
% z_1: same for z
%
% Execution example, starting with:
%   [x,y,z]0 = [1 2 2]
%   n = 10
%
% >> x = ass4_q4_gauss_seidel(1, 2, 2, 10)

if (n > 0)
    newx = (7 + y_1 - z_1)/4;
    newy = (21 + 4*newx + z_1)/8;
    newz = (15 + 2*newx - newy)/5;
    [x, y, z] = ass4_q4_gauss_seidel(newx, newy, newz, n-1);
else
    x = x_1;
    y = y_1;
    z = z_1;
end

end
