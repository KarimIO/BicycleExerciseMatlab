function [a,b,c,d] = Cubic(X, F)
    n = size(X, 2);
    
    e = zeros(n, 1);
    f = zeros(n, 1);
    g = zeros(n-1, 1);
    r = zeros(n, 1);
    f(1) = 1;
    f(n) = 1;
    
    w = @(y, z) (F(y) - F(z)) / (X(y) - X(z));
    
    h = zeros(n-1);
    for i = 1:n-1
        h(i) = X(i + 1) - X(i);
    end
    
    for i = 2:n-1
        e(i) = h(i-1);
        f(i) = 2 * (h(i - 1) + h(i));
        g(i) = h(i);
        r(i) = 3 * (w(i+1, i) - w(i, i-1));
    end
    
    c = TDMA(e, f, g, r);
    
    a = F;
    
    b = zeros(n-1, 1);
    d = zeros(n-1, 1);
        
    for i = 1:n-1
        d(i) = (c(i+1)-c(i)) / (3*h(i));
        b(i) = ((F(i+1)-F(i))/h(i)) - (2 * c(i)+c(i+1))*h(i)/3;
    end
end

