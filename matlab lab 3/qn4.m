% CRN: 020-313 - Cascaded Form using tf2sos
z = [1; -1; 1+1i; 1-1i];               % Zeros as column vector
p = [0.5; -0.5; 0.1+0.2i; 0.1-0.2i];   % Poles as column vector
k = 1;
 
[b, a] = zp2tf(z, p, k);
sos = tf2sos(b, a);
 
disp('Second Order Sections:');
disp(sos);
