clear
clc

T=readtable('DATASIITsecondtry.csv');
I=T{:,3};
V=T{:,4};

x = I;
y = V;


eq = 'a+b*exp(c*x)';
startPoints = [1 2 3];

f = fit(x,y,eq,'Start', startPoints);
x2 = linspace(0,4.8,1000);
y2 = f.a+f.b*exp(f.c*x2);

hold on
scatter(x,y)
plot(x2,y2)
hold off

xlim([0 4.8]);
ylim([0 2]);

xlabel('I (mA)') 
ylabel('V (V)')
legend({'', '1.833-0.001115*exp(1.555*x)'},'Location','northeast')