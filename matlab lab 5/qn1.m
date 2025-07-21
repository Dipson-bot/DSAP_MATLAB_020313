% CRN: 020-313 - Ideal Impulse Response (hd[n])
M = 21;
wc = 0.5 * pi;
tau = (M - 1) / 2;
n = 0:M-1;
hd = zeros(1, M);

for i = 1:M
    if (n(i) - tau) == 0
        hd(i) = wc / pi;
    else
        hd(i) = sin(wc * (n(i) - tau)) / (pi * (n(i) - tau));
    end
end

stem(n, hd);
title('CRN: 020-313 - Ideal Impulse Response h_d[n]');
xlabel('n'); ylabel('h_d[n]');
grid on;
