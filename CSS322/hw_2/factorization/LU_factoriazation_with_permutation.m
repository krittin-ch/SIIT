function [P, L, U, v] = LU_factoriazation_with_permutation(A)
% A is a square matrix (n, n)

% P is a permutation matrix         (n, n)
% L is a lower triangular matrix    (n, n)
% U is a upper triangular matrix    (n, n)
% v is a column vector of permutation      (n, 1)

n = size(A, 1);

P = zeros(n, n);
L = zeros(n, n);
U = A;
v = (1:n)';

for i = 1:n
    [M, I] = max(abs(U(i:n, i)));
    I = I + (i - 1);


    if i < n && M ~= U(i, i)
        U([i, I], :) = U([I, i], :);
        L([i, I], :) = L([I, i], :);
        v([i, I], :) = v([I, i], :);
    end

    for j = i+1:n
        factor = U(j, i) / U(i, i);
        L(j, i) = factor;
        U(j, :) = U(j, :) - factor * U(i, :);
    end
end

L = L + eye(n);

for i = 1:n
    idx = v(i);
    P(i, idx) = 1;
end

end



