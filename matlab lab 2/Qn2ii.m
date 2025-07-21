% CRN: 020-313 - Differentiator
n = 0:100; x = sin(2*pi*0.1*n);
B = [1 -1]; A = 1;
y = filter(B, A, x);
subplot(2,1,1); plot(n,x); title('CRN: 020-313 - Input');
subplot(2,1,2); plot(n,y); title('CRN: 020-313 - Output');
