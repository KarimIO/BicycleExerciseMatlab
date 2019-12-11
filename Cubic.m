function [a,b,c,d] = Cubic(X, F)
%CUBIC Summary of this function goes here
%   Detailed explanation goes here
    
    n = size(X, 2);
    
    A = zeros(n, n);
    B = zeros(n, 1);
    A(1,1) = 1;
    A(n,n) = 1;
    
    w = @(y, z) (F(y) - F(z)) / (X(y) - X(z));
    
    h = zeros(n-1);
    for i = 1:n-1
        h(i) = X(i + 1) - X(i);
    end
    
    for i = 2:n-1
        A(i,i-1) = h(i-1);
        A(i, i ) = 2 * (h(i - 1) + h(i));
        A(i,i+1) = h(i);
        B(i) = 3 * (w(i+1, i) - w(i, i-1));
    end
    
    c = A \ B;
    a = F;
    
    b = zeros(n-1, 1);
    d = zeros(n-1, 1);
        
    for i = 1:n-1
        d(i) = (c(i+1)-c(i)) / (3*h(i));
        b(i) = ((F(i+1)-F(i))/h(i)) - (2 * c(i)+c(i+1))*h(i)/3;
    end
end

