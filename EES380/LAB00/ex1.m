p = tf([1 2 1], [1]);

q = tf([1 0 1], [1]);

res1 = p*q

[num1, den1] = tfdata(p);
[num2, den2] = tfdata(q);

root_p = roots(num1{1})
root_q = roots(num2{1})

res2 = polyval(num1{1}, -1)
res3 = polyval(num2{1}, 6)