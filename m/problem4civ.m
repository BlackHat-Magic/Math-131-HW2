clc; close all; clear variables;

f = @(x) (2*x.^3 + 3*x - 1).*cos(x) - x;

xs = linspace(-1, 1, 400);
y = f(xs);
figure;
plot(xs, y);
hold on;
yline(0, 'Color', 'black', 'LineWidth', 0.5);
%