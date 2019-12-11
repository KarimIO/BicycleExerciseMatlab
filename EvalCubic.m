function [f] = EvalCubic(x, X, a, b, c, d)
%EVALCUBIC Summary of this function goes here
%   Detailed explanation goes here

    n = size(X, 2);
    
    m = n-1;
    
    for i=2:n
        if (x < X(i))
            m = i-1;
            break;
        end
    end
        
    l = x - X(m);
    
    f = a(m) + b(m)*l + c(m)*(l.^2) + d(m)*(l.^3);
end

