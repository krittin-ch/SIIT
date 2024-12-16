function [out] = new_exp_Taylor(x,terms)
% x is an exponent
% terms is the number of terms in Tayloy's series

if x < 0
    out = 1 / exp_Taylor(abs(x), terms);
else 
    out = exp_Taylor(x, terms);
end

end