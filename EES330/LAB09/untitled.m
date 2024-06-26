clc;
clear;

% x = omega - 1000 + 1;
omega = [10 20 40 70 100 150 200 300 600 1000]*1e3;
freq = omega/(2*pi);

sys2 = [0.5446 + 0.4455i 0.8462 + 0.2308i 0.8925 - 0.1217i 0.7235 - 0.3664i 0.5446 - 0.4455i 0.3370 - 0.4391i 0.2195 - 0.3890i 0.1099 - 0.2963i 0.0297 - 0.1617i 0.0109 - 0.0989i];

vo = abs(sys2)*0.2

deg = angle(sys2) * (180/pi)

ts = deg./(360*freq)*1e3

t = [0.0686    0.0133   -0.0034   -0.0067   -0.0069   -0.0061   -0.0053   -0.0041   -0.0023   -0.0015];