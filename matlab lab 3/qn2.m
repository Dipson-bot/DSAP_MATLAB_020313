% CRN: 020-313 - Transfer Function using zp2tf
z = [1; -1; 1+1i; 1-1i];     % Column vector of zeros
p = [0.5; -0.5; 0.1+0.2i; 0.1-0.2i];   % Column vector of poles
k = 1;

[b, a] = zp2tf(z, p, k);
disp('Numerator Coefficients (b):'); disp(b);
disp('Denominator Coefficients (a):'); disp(a);
