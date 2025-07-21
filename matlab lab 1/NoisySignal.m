%Noisy signal
n = randn(1,N)
t = 0:0.01:2;
x = sin(2*pi*3*t);
N = randn(1,length(x));
xn = x + 0.1*n;
subplot(211); plot(t,x);
subplot(212); plot(t,xn);
