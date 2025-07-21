% CRN: 020-313 - FIR Filter Responses for Different Windows

% Step 1: Filter specifications
M = 21;
wc = 0.5 * pi;
tau = (M - 1) / 2;
n = 0:M-1;
hd = zeros(1, M);

% Step 2: Compute ideal impulse response hd[n]
for i = 1:M
    if (n(i) - tau) == 0
        hd(i) = wc / pi;
    else
        hd(i) = sin(wc * (n(i) - tau)) / (pi * (n(i) - tau));
    end
end

% Step 3: Define window functions
w1 = rectwin(M)';
w2 = bartlett(M)';
w3 = hann(M)';
w4 = hamming(M)';
w5 = blackman(M)';

% Step 4: Multiply hd[n] with window functions
h1 = hd .* w1;
h2 = hd .* w2;
h3 = hd .* w3;
h4 = hd .* w4;
h5 = hd .* w5;

% Step 5: Compute frequency responses (avoid using ~)
[H1, w] = freqz(h1, 1, 512);
H2 = freqz(h2, 1, 512);
H3 = freqz(h3, 1, 512);
H4 = freqz(h4, 1, 512);
H5 = freqz(h5, 1, 512);

% Step 6: Plot magnitude responses
figure;
plot(w/pi, 20*log10(abs(H1)), 'r'); hold on;
plot(w/pi, 20*log10(abs(H2)), 'g');
plot(w/pi, 20*log10(abs(H3)), 'b');
plot(w/pi, 20*log10(abs(H4)), 'm');
plot(w/pi, 20*log10(abs(H5)), 'k');
hold off;

title('CRN: 020-313 - FIR Filter Frequency Responses');
xlabel('Normalized Frequency (w/pi)');
ylabel('Magnitude (dB)');
legend('Rectangular', 'Bartlett', 'Hanning', 'Hamming', 'Blackman');
grid on;
