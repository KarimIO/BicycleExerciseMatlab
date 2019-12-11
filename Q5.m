diary Q5.txt

x = 16.0;
X = [4, 5.5, 7, 8,9.5, 11, 12.5, 14, 15.5, 16.5, 18, 19.5, 21, 22.5, 23.5, 25, 26.5, 28];
F = [0.435, 0.3975, 0.395, 0.3825, 0.38, 0.37, 0.3775, 0.38, 0.385, 0.3825, 0.385, 0.39, 0.3975, 0.395, 0.41, 0.4075, 0.425, 0.4275];

[a,b,c,d] = Cubic(X, F);

%f = EvalCubic(x, X, a, b, c, d);

q = 4:0.05:28;
[Q] = arrayfun(@(p)EvalCubic(p, X, a, b, c, d), q);

plot(q, Q, X, F, '*');
hold on

disp("Evaluating cubic spline gives: ");
disp(EvalCubic(x, X, a, b, c, d));

diary off