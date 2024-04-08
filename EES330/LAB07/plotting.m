clc;
clear;

t = 0:0.01:100;
omega = [0.5e3, 2e3, 4e3, 7e3, 10e3, 15e3, 20e3, 30e3, 40e3, 100e3, 500e3];
freq = omega/(2*pi);

Vo = [520, 540, 520, 400, 400, 376, 330, 290, 204, 84, 14] * 1e-3;

timeShift = [0.2, 65, 64, 61.6, 48, 44.4, 40.8, 34.2, 28.4, 15, 2.84] * 1e-6;

phaseShift = -omega.*timeShift;
gain = Vo/0.1;
gaindB = 20*log10(gain);

response = gain.*exp(1i*phaseShift);
gfr = idfrd(response, omega);

r1 = 1e3;
r2 = 5e3;
c = 0.01e-6;
tau = r2*c;

x1 = 0:10e6;
y1 = 9*ones(size(x1));

x2 = 0:10e6;
y2 = 14*ones(size(x2));

y3 = -20:20;
x3 = 2.93075e4*ones(size(y3));

hold on

ylim([-20 20])
plot(x1, y1)
plot(x2, y2)
plot(x3, y3)

bodeplot(gfr)
bodeplot(tf([r2], r1*[tau 1]))

grid on
hold off