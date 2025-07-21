% CRN: 020-313 - IDFT comparisons
% Using inverse matrix method
X = fft([1,2,3,4,5,6,7,8]);
N = length(X);
n = 0:N-1; k = n';
WN = exp(1i*2*pi/N);
WN_matrix = WN .^ (k*n);
x_reconstructed = (1/N) * (WN_matrix * X.');
disp('Reconstructed x[n] using IDFT matrix:'); disp(x_reconstructed);

% Using ifft
x_ifft = ifft(X);
disp('Reconstructed x[n] using ifft:'); disp(x_ifft);
