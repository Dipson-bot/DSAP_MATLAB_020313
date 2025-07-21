% Lab 1 - Question 3: Elementary Discrete-Time Signals
% CRN: 020-348

n = -5:10;

% 3a. Unit Impulse and Unit Step
impulse_seq = unit_impulse(n);
step_seq = unit_step(n);

figure;
subplot(2,1,1);
stem(n, impulse_seq);
title('CRN: 020-348 - Unit Impulse Function');
xlabel('n'); ylabel('x[n]');
grid on;

subplot(2,1,2);
stem(n, step_seq);
title('CRN: 020-348 - Unit Step Function');
xlabel('n'); ylabel('x[n]');
grid on;