clear
clc

v = [2.343 2.35 2.255 2.205 2.055 1.989 1.988 1.89 1.893 1.836 1.828].';
i = [90.5 90.4 85.3 55.77 22.46 12.06 11.98 3.07 3.12 1.05 0.88].';
p = [212.0415 208.372 192.3515 122.97285 46.1553 23.98734 23.81624 5.8023 5.90616 1.95615 1.60864].';


eq1 = 'a+b*exp(c*x)';
startPoints = [0 0 0];

f1 = fit(v,i,eq1,'Start', startPoints);

hold on
scatter(v,i,'b')
plot(f1,'b')

eq2 = 'a+b*x*exp(c*x)';
startPoints = [0 0 0];

f2 = fit(v,p,eq2,'Start', startPoints);

scatter(v,p,'r')
plot(f2,'r')
hold off

title('I (y-axis) and P (y-axis) on a shared V (x-axis)')
xlabel('V (V)') 
ylabel('I (mA)     and     P (mW)')
legend({'-53.19+1.083*exp(2.095*x)','I','-88.42+0.9451*x*exp(2.102*x)','P'},'Location','northeast')