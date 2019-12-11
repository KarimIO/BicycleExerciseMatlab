diary Q1.txt

imax = 100;
es = 0.001;
v0 = 0;

g=9.81;
Cr = 40;
grade = 0.0925;
theta = atan(grade);
ct = cos(theta);
st = sin(theta);
Pavg = 440;
m = 90;
row = 1.225; % kg/m3 at sea level and 15 degrees C
ApCd= 0.36;
k = 0.5 * row * ApCd;

f = @(v)(-k*v.^3-v*Cr*ct- v*m*g*st+Pavg);
fd = @(v) (-3*v*v*k - Cr*ct - m*g*st);

[out, iter, ea] = NewtonRaphson(f, fd, v0, es, imax)

diary off