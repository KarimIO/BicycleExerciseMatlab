function [out, iter, ea] = NewtonRaphson(f, fd, x0, es, imax)
    % NewtonRaphson Summary of this function goes here
    %   Detailed explanation goes here
    
    
    xr = x0;
    iter = 0;
    ea = 100.0;
    
    while (true)
        xrold = xr;
        xr = xrold - f(xrold) / fd(xrold);
        iter = iter + 1;
        if (xr ~= 0)
            ea = 100.0 * abs((xr - xrold) / xr);
        end
        
        if (ea < es || iter >= imax)
            break;
        end
    end
    
    out = xr;
end

