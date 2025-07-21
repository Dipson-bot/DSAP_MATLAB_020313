% CRN: 020-313 - Circular Convolution Function
function y = circular_conv(x1, x2)
    N = max(length(x1), length(x2));
    x1 = [x1, zeros(1, N - length(x1))];
    x2 = [x2, zeros(1, N - length(x2))];
    y = ifft(fft(x1) .* fft(x2));
end
