% CRN: 020-313 - DFT using basic formula
x = [1,2,3,4,5,6,7,8];
N = length(x);
X = zeros(1,N);
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-1i*2*pi*k*n/N);
    end
end
disp('DFT X(k):'); disp(X);

