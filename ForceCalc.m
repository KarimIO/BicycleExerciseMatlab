function [F] = ForceCalc(angle, Cr, m, T, n)
%FORCECALC Summary of this function goes here
%   Detailed explanation goes here
    g = 9.81;
    ApCd = 0.36;
    row = 1.225; % kg/m3 at sea level and 15 degrees C;
    
    Pavg = 2 * T * pi * n / 60.0;
    Fb = Pavg / v;
    Fw = m * g * sin(angle);
    Fr = Cr * cos(angle);
    Fd = 0.5 * row * ApCd * (v * v);
    
    F = Fb - Fw - Fr - Fd;
    
end

