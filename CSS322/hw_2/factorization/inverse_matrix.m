function [inverse_A] = inverse_matrix(A)
% A is a square matrix (n, n)

n = size(A, 1);
I_n = eye(n);

inverse_A = zeros(n);

[P, L, U, ~] = LU_factoriazation_with_permutation(A);

for i = 1:n
    e = P * I_n(i, :)';
    w = forward_substitution(L, e);
    inverse_A(:, i) = backward_substitution(U, w);
end

end

