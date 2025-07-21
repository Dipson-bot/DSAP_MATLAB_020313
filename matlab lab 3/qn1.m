% CRN: 020-313 - Pole-Zero Plot using tf2zp and zplane
b = [0.2 0.1 -0.3 0.4 0.3];
a = [1 0.4 -0.2 0.3 -0.1];
[z, p, k] = tf2zp(b, a);
zplane(z, p);
title('CRN: 020-313 - Pole-Zero Plot');

disp('Zeros:'); disp(z);
disp('Poles:'); disp(p);
disp('Gain:'); disp(k);

