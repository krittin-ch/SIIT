clear
clc

i = [0.0845 0.0922 0.1016 0.0966 0.0589 0.0236 0.0128 0.00324 0]';
v = [0 0.94 2.073 4.748 5.916 6.3 6.37 6.463 6.5]';

syms y(x)
y(x) = 6.4-3e-06*exp(150*x);

hold on
scatter(i,v,'r')
fplot(y(x))
hold off

xlim([0 0.105])
ylim([0 7])
title('SINGLE SOLAR PANEL')
xlabel('I (mA)') 
ylabel('V (V)')
legend({'','6.3-3e-06*exp(150*x)'})