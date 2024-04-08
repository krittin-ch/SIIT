clear
clc

i = [0.0845 0.0922 0.1016 0.0966 0.0589 0.0236 0.0128 0.00324 0]';
v = [0 0.94 2.073 4.748 5.916 6.3 6.37 6.463 6.5]';
p = i.*v;

eq1 = 'a+b*exp(c*x)';
startPoints = [1 1 2];

f1 = fit(v,i,eq1,'Start', startPoints);

hold on
scatter(v,i,'r')
plot(f1,'r')

eq2 = 'x*(a+b*exp(c*x))';
startPoints = [1 1 2];

f2 = fit(v,p,eq2,'Start', startPoints);

scatter(v,p,'b')
plot(f2,'b')
xline(1.849)
hold off


xlim([0 7])
ylim([0 0.5])
title('I (y-axis) and P (y-axis) on a shared V (x-axis)')
xlabel('V (V)') 
ylabel('I (mA)     and     P(mW)')
legend({'I','0.09463-1.19e-06*exp(1.741*x)','P','0.1047*x-1.182e-05*x*exp(1.401*x)','x = 1.849'},'Location','northeast')