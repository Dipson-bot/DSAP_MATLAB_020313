% CRN: 020-313 - Pole-Zero Plot for Accumulator
b = 1;
a = [1 -1];
[z, p, k] = tf2zp(b, a);
zplane(z, p);
title('CRN: 020-313 - Accumulator Pole-Zero Plot');

disp('Zeros:'); disp(z);
disp('Poles:'); disp(p);
disp('Gain:'); disp(k);
