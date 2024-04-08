clear
clc

i = [0.105 0.1027 0.098 0.1021 0.0997 0.04439 0.0251 0.00635 0]';
v = [0 1.048 2 5.129 10.01 11.83 12.52 12.65 13]';

syms y(x)
y(x) = 12.5-2.5e-06*exp(150*x);

hold on
scatter(i,v,'r')
fplot(y(x))
hold off

xlim([0 0.11])
ylim([0 13])
title('MULTIPLE SOLAR PANEL')
xlabel('I (mA)') 
ylabel('V (V)')
legend({'','12.5-2.5e-06*exp(150*x)'})