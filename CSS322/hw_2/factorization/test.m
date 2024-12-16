A = [
    -1 1 3;
    2 0 1;
    -3 -1 2
];

fprintf('MATLAB built-in Inverse Function:\n');
disp(inv(A));

fprintf('Inverse Matrix with GEPP method and P^TLU:\n');
disp(inverse_matrix(A));

