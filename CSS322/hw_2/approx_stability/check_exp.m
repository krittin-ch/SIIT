x1  = 30;
x2 = -30;

fprintf('MATLAB built-in exp of x = 30 : ');
disp(exp(x1))

fprintf('New custom exp of x = 30 and terms = 200 : ');
disp(new_exp_Taylor(x1, 200))

fprintf('MATLAB built-in exp of x = -30 : ');
disp(exp(x2))

fprintf('New custom exp of x = -30 and terms = 200 : ');
disp(new_exp_Taylor(x2, 200))
