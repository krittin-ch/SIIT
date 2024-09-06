r = 5;
A = pi*r^2;

v0 = 150;
h0 = v0/A * 10^-3;

v_out = 30e-3;

K = v_out/h0;

v1 = 20e-3;
v2 = 20e-3;

in = v1 + v2;

G1 = tf([in], [A K]);

U = tf([A*h0 in], [1])

G = G1 * U

% G2 = tf([1], [A/K 1]);

% G = G2;

hold on
[y, t] = step(G1);

h0 = 0.005

n_y = h0*exp((-K/A)*t);

plot(t, y + n_y);

% plot(t, y)
[y2, t] = step(G);
% plot(t, y2);

grid on;
xlim([0 50]);