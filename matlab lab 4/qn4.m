% CRN: 020-313 - Time comparison
x = [1,2,3,4,5,6,7,8];

tic
X1 = dft(x);
t1 = toc;

tic
N = length(x);
n = 0:N-1; k = n';
WN = exp(-1i*2*pi/N); WN_matrix = WN .^ (k*n);
X2 = WN_matrix * x.';
t2 = toc;

tic
X3 = fft(x);
t3 = toc;

fprintf('Time (function): %f\nTime (matrix): %f\nTime (fft): %f\n', t1, t2, t3);
