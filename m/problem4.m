clc; close all; clear variables;

function [c, iter, err] = bisection_method(f, a, b, tol, N)
    if ~isnumeric(a) || ~isnumeric(b) || ~isnumeric(tol)
        fprintf('a, b, and tol must be numbers');
        return;
    end
    if ~isnumeric(N) || N < 1 || mod(N, 1) ~= 0
        fprintf('N must be a natural number.');
        return;
    end
    if ~isa(f, 'function_handle')
        fprintf('f(x) must be callable (e.g., a function)');
        return;
    end
    if f(a) * f(b) > 0
        return;
    end

    err = (b - a) / 2;
    for i = 1:N
        c = (a + b) / 2;

        if err < tol
            iter = i;
            return;
        end
        if f(c) == 0
            iter = i;
            return;
        end
        if f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
        err = (b - a) / 2;
    end

    fprintf('Maximum iterations exceeded.');
    iter = i;
    return;
end