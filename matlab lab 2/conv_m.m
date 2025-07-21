% CRN: 020-313 - User-defined Convolution Function
function [y, n] = conv_m(x1, n1, x2, n2)
    n = (min(n1)+min(n2)):(max(n1)+max(n2));
    y = conv(x1, x2);
end

