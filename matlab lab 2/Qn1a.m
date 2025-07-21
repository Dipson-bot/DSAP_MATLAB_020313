% CRN: 020-313 - Convolution of Causal Signals
x = [1 2 3 4];
h = [2 3 4 5];
y = conv(x, h);
stem(y);
title('CRN: 020-313 - Convolution Result');
xlabel('n'); ylabel('y[n]'); grid on;
