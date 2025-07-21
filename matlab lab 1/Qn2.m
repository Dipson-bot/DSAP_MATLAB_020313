function x = unit_impulse(n)
% Returns unit impulse ?[n]
x = double(n == 0);
title('CRN: 020-313 - 2iii. Maximum Oscillation at \omega = \pi');
xlabel('n'); ylabel('x[n]');
grid on;

