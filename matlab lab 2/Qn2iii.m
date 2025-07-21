% CRN: 020-313 - Accumulator
f1 = 0.1; f2 = 0.4; n = 0:100;
x1 = sin(2*pi*f1*n);
x2 = sin(2*pi*f2*n);
x = x1 + x2;
B = 1; A = [1 -1];
y = filter(B, A, x);

subplot(4,1,1); plot(x1); title('CRN: 020-313 - x1[n]');
subplot(4,1,2); plot(x2); title('CRN: 020-313 - x2[n]');
subplot(4,1,3); plot(x);  title('CRN: 020-313 - x[n]');
subplot(4,1,4); plot(y);  title('CRN: 020-313 - y[n]');
