% CRN: 020-313 - User-defined Function to Check Stability
function is_stable = check_stability(B, A)
    h = filter(B, A, [1, zeros(1, 1000)]);
    is_stable = sum(abs(h)) < Inf;
end
