clear
clc

i = [0.105 0.1027 0.098 0.1021 0.0997 0.04439 0.0251 0.00635 0]';
v = [0 1.048 2 5.129 10.01 11.83 12.52 12.65 13]';
r = [0 10.2 20.4 50.2 100.4 266.5 499.5 1992]';
p = i.*v;

p(9,:) = [];

f = createFit_PR(r, p);

hold on
plot(f,'r')
hold off

xlim([0 2000])
ylim([0 1.1])
title('P (y-axis) and R (x-axis)')
xlabel('R (Ohm)') 
ylabel('P (mW)')
legend({'', '2.6*exp(-0.004707*x)-2.674*exp(-0.01223*x)'})