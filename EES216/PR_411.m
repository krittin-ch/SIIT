clear
clc

i = [0.0845 0.0922 0.1016 0.0966 0.0589 0.0236 0.0128 0.00324 0]';
v = [0 0.94 2.073 4.748 5.916 6.3 6.37 6.463 6.5]';
r = [0 10.2 20.4 50.2 100.4 266.5 499.5 1992]';
p = i.*v;

p(9,:) = [];

f = createFit_PR(r, p);

hold on
plot(f,'r')
hold off

xlim([0 2000])
ylim([0 0.5])
title('P (y-axis) and R (x-axis)')
xlabel('R (Ohm)') 
ylabel('P (mW)')
legend({'', '0.7615*exp(-0.005761*x)-0.7936*exp(-0.02914*x)'})