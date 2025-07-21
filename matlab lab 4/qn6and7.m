% CRN: 020-313 - Using cconv
x1 = [1,2,3]; x2 = [4,5];
y = cconv(x1, x2, max(length(x1), length(x2)));
disp('Circular convolution using cconv:'); disp(y);	
