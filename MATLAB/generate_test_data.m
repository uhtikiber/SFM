%THIS IS THE OUTDATED VERSION, NOT SUPPOSED TO WORK
%for generation see other function

function [x, y, xx, yy, L1, L2, F] = generate_test_data(N)
    if nargin == 0
        N = 10;
    end
    x = rand(1, N);
    y = rand(1, N);
    F = rand(3);
    L1 = rand(1);
    X = [x; y;  1 + L1 * (x.^2 + y.^2)]; % colomns are coordinates in first image + distortion

    xx = zeros(1, N); %will define from equation
    yy = rand(1, N);
    L2 = rand(1);

    syms t z real;

    for i = 1:N
        ex = (X(:, i))' * F * [t; z; 1 + L2 * (t^2 + z^2)];
        [c, cx] = coeffs(ex, t);
    %     disp(c);
    %     disp(cx);
        d = c(2)*c(2) - 4 * c(1) * c(3);
    %     disp(d);
        [zc, zx] = coeffs(d, z);
    %     disp(zc);
    %     disp(zx);
        newz = (-zc(2) + (zc(2)*zc(2) - 4*zc(1)*zc(3))^(1/2)) / (2 * zc(1));
    %     disp(double(newz));
    %     disp(double(subs(d, z, newz)));
        newt = -c(2) / (2 * c(1));
    %     disp(double(newt));
    %     disp(double(subs(ex, [z t], [newz newt])));
        xx(i) = newt;
        yy(i) = newz;
    end    
end
