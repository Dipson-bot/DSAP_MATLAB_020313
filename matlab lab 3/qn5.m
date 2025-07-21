% CRN: 020-313 - Partial Fraction Expansion using residuez
[z, p, k] = tf2zp(b, a);
[r, p, f] = residuez(b, a);

disp('Residues:'); disp(r);
disp('Poles:'); disp(p);
disp('Direct Terms:'); disp(f);
