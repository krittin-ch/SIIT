function [w] = forward_substitution(L,b_hat)
% L is a lower triangular matrix            (n, n)
% b_hat is a preferred output column vector (n, 1)

% w is a variable column vector             (n, 1)

n = size(L, 1);

w = zeros(n, 1);

for i = 1:n
    w(i) = b_hat(i);

    for j = i+1:n
        b_hat(j) = b_hat(j) - w(i) * L(j, i);
    end
end

end

