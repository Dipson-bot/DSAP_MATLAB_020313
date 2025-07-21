% Usage Example
x1 = [1 2 3]; n1 = -1:1;
x2 = [2 1];   n2 = -1:0;
[y, n] = conv_m(x1, n1, x2, n2);

subplot(3,1,1); stem(n1, x1); title('CRN: 020-313 - x1[n]');
subplot(3,1,2); stem(n2, x2); title('CRN: 020-313 - x2[n]');
subplot(3,1,3); stem(n, y); title('CRN: 020-313 - y[n] = x1 * x2');