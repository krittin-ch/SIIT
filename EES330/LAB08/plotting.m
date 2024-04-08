clc;
clear;

t = 0:0.01:100;
omega = [1e3 2e3 4e3 8e3 10e3 15e3 20e3 30e3 50e3 100e3 500e3];
freq = omega/(2*pi);
Vo = [0.0052 0.0061, 0.0170, 0.0299, 0.0456, 0.0592, 0.0697, 0.0840, 0.0932, 0.0980, 0.1];

timeShift = [0.0931, 0.0482, 0.0253, 0.0134, 0.0115, 0.0081, 0.0063, 0.0046, 0.0033, 0.0017, 0.00037]*2*pi/360;

phaseShift =  -360*freq.*timeShift;
gain = Vo/0.1;
gaindB = 20*log10(gain);

response = gain.*exp(1i*phaseShift);

r1 = 5e3;
r2 = 5e3;
c = 0.01e-6;
tau1 = r1*c;
tau2 = r2*c;

omega_n = 1e3:500e3;
sys = -(tau2*omega_n*1i)./(tau1*omega_n*1i + 1);

figure;
subplot(2,1,1);
semilogx(omega, 20*log10(abs(response))); hold on;
semilogx(omega_n, 20*log10(abs(sys)));
ylabel('Magnitude (dB)');
grid on;

subplot(2,1,2);
semilogx(omega, phaseShift+180); hold on;
semilogx(omega_n, angle(sys)*180/pi+180);
ylabel('Phase (degrees)');
xlabel('Frequency (rad/s)');
grid on;

hold off;
