function [out] = exp_Taylor(x,terms)
% x is an exponent
% terms is the number of terms in Tayloy's series

out = 0;

for i = 0:terms
    out = out + x^i / factorial(i);
end

end

