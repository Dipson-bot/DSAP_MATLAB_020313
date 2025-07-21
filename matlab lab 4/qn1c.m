% CRN: 020-313 - Plot DFT Components
x = [1,2,3,4,5,6,7,8];
X = dft(x);
k = 0:length(X)-1;
subplot(2,2,1); stem(k, real(X)); title('Real Part');
subplot(2,2,2); stem(k, imag(X)); title('Imaginary Part');
subplot(2,2,3); stem(k, abs(X)); title('Magnitude');
subplot(2,2,4); stem(k, angle(X)); title('Phase');
