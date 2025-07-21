% CRN: 020-313 - FIR Filter Using fir1() and Kaiser Window (freqz replacement)
M = 21;
beta = 5;
w_kaiser = kaiser(M, beta)';
h_fir1 = fir1(M - 1, 0.5, w_kaiser);

freqz(h_fir1, 1, 512);
title('CRN: 020-313 - FIR Filter using fir1() and Kaiser Window');
