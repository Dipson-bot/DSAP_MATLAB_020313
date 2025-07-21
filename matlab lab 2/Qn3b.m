% CRN: 020-313 - Using impz()
subplot(3,1,1); impz([1 1 1]/3,1); title('CRN: 020-313 - Smoothing Filter - impz');
subplot(3,1,2); impz([1 -1],1);   title('CRN: 020-313 - Differentiator - impz');
subplot(3,1,3); impz(1,[1 -1]);   title('CRN: 020-313 - Accumulator - impz');
