% CRN: 020-313 - Impulse Responses
n = 0:20;
d = [1, zeros(1,20)];

h1 = filter([1 1 1]/3, 1, d);
h2 = filter([1 -1], 1, d);
h3 = filter(1, [1 -1], d);

subplot(3,1,1); stem(n, h1); title('CRN: 020-313 - Smoothing Filter');
subplot(3,1,2); stem(n, h2); title('CRN: 020-313 - Differentiator');
subplot(3,1,3); stem(n, h3); title('CRN: 020-313 - Accumulator');
