% Continuous-time sinusoidal signal
F = 10;       % Frequency in Hz
A = 2;       % Amplitude
th = 0;      % Phase angle in radians
Fs = 20*F;   % Sampling frequency
Ts = 1/Fs;   % Sampling period
T = 1/F;     % Period of the sinusoid

t = 0:Ts:3*T;          % Time vector
xt = A*cos(2*pi*F*t + th);   % Signal definition

figure;
plot(t, xt);
title('CRN: 020-348 - Continuous time sinusoid');
xlabel('t'); ylabel('x(t)');
grid on;
    