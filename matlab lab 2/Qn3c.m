% CRN: 020-313 - Step Responses
u = ones(1, 21);

s1 = filter([1 1 1]/3, 1, u);
s2 = filter([1 -1], 1, u);
s3 = filter(1, [1 -1], u);

subplot(3,1,1); stem(0:20, s1); title('CRN: 020-313 - Smoothing Filter - Step Response');
subplot(3,1,2); stem(0:20, s2); title('CRN: 020-313 - Differentiator - Step Response');
subplot(3,1,3); stem(0:20, s3); title('CRN: 020-313 - Accumulator - Step Response');
