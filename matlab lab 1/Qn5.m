% c. Even and Odd Parts of the Noisy Signal
x_rev = fliplr(x_noisy);                  % Time-reversed version
x_even = 0.5 * (x_noisy + x_rev);         % Even part
x_odd  = 0.5 * (x_noisy - x_rev);         % Odd part

figure;
subplot(2,1,1);
plot(n, x_even);
title('CRN: 020-313 - Even Part of Noisy Signal');
xlabel('n'); ylabel('x_{even}[n]');
grid on;

subplot(2,1,2);
plot(n, x_odd);
title('CRN: 020-313 - Odd Part of Noisy Signal');
xlabel('n'); ylabel('x_{odd}[n]');
grid on;
