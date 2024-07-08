clc; close all; clear variables;

f = @(x) (2*x^3 + 3*x - 1)*cos(x) - x;

interval = [-1, 1];

root = fzero(f, interval)
%
%
%
%