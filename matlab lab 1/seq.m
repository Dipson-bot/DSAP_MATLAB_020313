% Lab 1 - Question 4#: Fourier Series Approximation
% CRN: 020-313

t = 0:0.001:1; % Time vector

% a. Fourier Series Approximation for N = 9
N = 9;
x = zeros(size(t));
for n = 1:2:N % Odd harmonics only
    x = x + sin(2*pi*n*t)/n;
end

figure;
plot(t, x);
title('CRN: 020-313 - Fourier Series Approximation (N = 9)');
xlabel('t'); ylabel('x(t)');
grid on;

