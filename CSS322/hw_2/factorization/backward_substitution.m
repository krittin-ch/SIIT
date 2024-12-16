function [x] = backward_substitution(U,w)
% U is a upper triangular matrix            (n, n)
% w is a preferred output column vector     (n, 1)

% x is a variable column vector             (n, 1)

n = size(U, 1);

x = zeros(n, 1);

for i = n:-1:1
    x(i) = w(i) / U(i, i);

    for j = 1:i-1
        w(j) = w(j) - x(i) * U(j, i);
    end
end

end

