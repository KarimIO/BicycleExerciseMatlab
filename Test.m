x = [0 1 2.5 3.6 5 7 8.1 10];
y = sin(x);
xx = 0:.05:10;
%yy = spline(x,y,xx);

[a,b,c,d] = Cubic(x, y);
[yy, zz] = arrayfun(@(p)EvalCubic(p, x, a, b, c, d), xx);
plot(xx,yy,'g',x,y,'b*')
grid on