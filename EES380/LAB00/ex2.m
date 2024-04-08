num_g = 10*[1 2];

den_g1 = [1 0];
den_g2 = [1 -1];
den_g3 = [1 3];

G = tf(num_g, conv(conv(den_g1, den_g2), den_g3));
H = tf([1 1], [1 3]);

% C(s) = R(s)T(s)
T = feedback(G,H)



