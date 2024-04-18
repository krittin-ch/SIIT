clc;
clear;

% Initialize angular frequency
omega = [10 20 40 70 100 150 200 300 600 1000]*1e3;
freq = omega/(2*pi);

% Input the experiment values
Vo = [0.1337 0.1764 0.1842 0.1772 0.1446 0.1157 0.0853 0.0642 0.0339 0.0149];
timeShift = [0.0748 0.0213 -0.0044 -0.0065 -0.0070 -0.0063 -0.0051 -0.0038 -0.0022 -0.0015]*1e-3;

% Leave the rest and run the code
phaseShift = timeShift.*(360*freq);
gain = Vo/0.2;
gaindB = 20*log10(gain);

r1 = 1e3;
r2 = 10e3;
c = 0.01e-6;
tau1 = r1*c;
tau2 = r2*c;

% Choosing the plotting limit
startPoint = 1e3;
endPoint = 1000e3;
step = 1;
midPoint = 10^((log10(startPoint)+log10(endPoint))/2);

omega_a = startPoint:step:endPoint;

% Slope plotting
omega_1 = startPoint:step:31.623e3;
y1 =  -79.8642 + 19.9402*log10(omega_1);

omega_2 = 31.623e3+1:step:endPoint;
y2 = 99.5980 - 19.9402*log10(omega_2);

y = cat(2, y1, y2);

s = 1i*omega_a;

num = tau2*s;
den = (tau1*tau2)*s.^2 + (tau1+tau2)*s + 1;

sys = num./den;

magnitude = 20*log10(abs(sys));
phase = angle(sys) * (180/pi);

figure;

subplot(2, 1, 1);
semilogx(omega_a, magnitude);
hold on;
semilogx(omega, gaindB);
semilogx(omega_a, y, '--');

xline(31.623e3)
ylim([-23 11])

title('Bode Plot');
ylabel('Magnitude (dB)');
grid on;
hold off;


subplot(2, 1, 2);
semilogx(omega_a, phase);
hold on;
semilogx(omega, phaseShift);
xline(31.623e3)
yline(0)

ylim([-90 90])

xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
grid on;
hold off;