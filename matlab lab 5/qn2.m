% CRN: 020-313 - Plot Window Functions Using freqz
M = 21;

w_rect = rectwin(M)';
w_bart = bartlett(M)';
w_hann = hann(M)';
w_hamm = hamming(M)';
w_black = blackman(M)';

figure;
freqz(w_rect, 1, 512);
title('CRN: 020-313 - Rectangular Window');

figure;
freqz(w_bart, 1, 512);
title('CRN: 020-313 - Bartlett Window');

figure;
freqz(w_hann, 1, 512);
title('CRN: 020-313 - Hanning Window');

figure;
freqz(w_hamm, 1, 512);
title('CRN: 020-313 - Hamming Window');

figure;
freqz(w_black, 1, 512);
title('CRN: 020-313 - Blackman Window');
