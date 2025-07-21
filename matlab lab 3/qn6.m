% CRN: 020-313 - Frequency and Phase Response
[b, a] = zp2tf(z, p, k);
freqz(b, a);
title('CRN: 020-313 - Frequency and Phase Response');
