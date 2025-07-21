% CRN: 020-313 - Stability Test with Subplots

n = 0:1000;

% Accumulator Impulse Response
h_acc = filter(1, [1 -1], [1, zeros(1, 1000)]);
values_acc = [h_acc(1), h_acc(11), h_acc(101), h_acc(1001)];

% Differentiator Impulse Response
h_diff = filter([1 -1], 1, [1, zeros(1, 1000)]);

% Smoothing Filter Impulse Response
h_smooth = filter([1 1 1]/3, 1, [1, zeros(1, 1000)]);

% Plot all in one figure using subplot
figure;

subplot(3,1,1);
stem(n(1:20:end), h_acc(1:20:end));
title('CRN: 020-313 - Accumulator Impulse Response');
xlabel('n'); ylabel('h[n]');
grid on;

subplot(3,1,2);
stem(n(1:20:end), h_diff(1:20:end));
title('CRN: 020-313 - Differentiator Impulse Response');
xlabel('n'); ylabel('h[n]');
grid on;

subplot(3,1,3);
stem(n(1:20:end), h_smooth(1:20:end));
title('CRN: 020-313 - Smoothing Filter Impulse Response');
xlabel('n'); ylabel('h[n]');
grid on;

% Check Stability
is_diff_stable = check_stability([1 -1], 1);
is_smooth_stable = check_stability([1 1 1]/3, 1);
is_acc_stable = check_stability(1, [1 -1]);

disp(['Accumulator h[n]: h[0]=', num2str(h_acc(1)), ...
      ', h[10]=', num2str(h_acc(11)), ...
      ', h[100]=', num2str(h_acc(101)), ...
      ', h[1000]=', num2str(h_acc(1001))]);

disp(['Differentiator Stable: ', num2str(is_diff_stable)]);
disp(['Smoothing Filter Stable: ', num2str(is_smooth_stable)]);
disp(['Accumulator Stable: ', num2str(is_acc_stable)]);
