clc;
clear;

t = 0:0.01:100;
omega = [10e3 20e3 40e3 70e3 100e3 150e3 200e3 300e3 600e3 1000e3];
freq = omega/(2*pi);
% Vo = [0.0052 0.0061, 0.0170, 0.0299, 0.0456, 0.0592, 0.0697, 0.0840, 0.0932, 0.0980, 0.1];

% timeShift = [0.0931, 0.0482, 0.0253, 0.0134, 0.0115, 0.0081, 0.0063, 0.0046, 0.0033, 0.0017, 0.00037]*2*pi/360;

% phaseShift =  360*freq.*timeShift;
% gain = Vo/0.1;
% gaindB = 20*log10(gain);

% response = gain.*exp(1i*phaseShift);

r1 = 1e3;
r2 = 10e3;
c = 0.01e-6;
tau1 = r1*c;
tau2 = r2*c;

omega_n = 1e3:1000e3;
sys = (tau2*omega_n*1i)./(1 + (tau1 + tau2).*omega_n*1i - tau1*tau2*omega_n.^2);
sys1 = [0.5950 + 0.4323i   0.8588 + 0.2078i   0.8888 - 0.1342i   0.7171 - 0.3710i   0.5392 - 0.4466i 0.3339 - 0.4382i   0.2177 - 0.3880i   0.1092 - 0.2956i   0.0296 - 0.1614i  0.01089 - 0.098901i];
figure;
subplot(2,1,1);
% semilogx(omega, 20*log10(abs(response)));
semilogx(omega, 20*log10(abs(sys1))); hold on;
semilogx(omega_n, 20*log10(abs(sys)));
ylabel('Magnitude (dB)');
grid on;
hold off;

subplot(2,1,2);
% semilogx(omega, phaseShift);
hold on;
semilogx(omega, angle(sys1)*180/pi);
semilogx(omega_n, angle(sys)*180/pi);
ylabel('Phase (degrees)');
xlabel('Frequency (rad/s)');
grid on;

hold off;
