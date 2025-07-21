% CRN: 020-313 - DFT using WN matrix multiplication
x = [1,2,3,4,5,6,7,8];
N = length(x);
n = 0:N-1;
k = n';
WN = exp(-1i*2*pi/N);
WN_matrix = WN .^ (k*n);
X = WN_matrix * x.';
disp('DFT using WN matrix:'); disp(X);
