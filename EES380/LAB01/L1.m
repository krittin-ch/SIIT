L = 1e-3;
C = 1e-3;
R = 2;

num = [1/(L*C)];
den = [1 1/(R*C) 1/(L*C)];

RLCtf = tf(num, den);

step(RLCtf)
grid on;