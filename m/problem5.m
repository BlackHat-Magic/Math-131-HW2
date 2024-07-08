clc; close all; clear variables;

function [c, iter, err] = fixed_point_method(g, x_0, tol, N)
    if ~isa(g, 'function_handle')
        fprintf('g(x) must be callable (e.g., a function).');
        return;
    end
    if ~isnumeric(x_0) || ~isnumeric(tol)
        fprintf('x_0 and tol must be numbers.');
        return;
    end
    if ~isnumeric(N) || N < 1 || mod(N, 1) ~= 0
        fprintf('N must be a natural number.');
        return;
    end
    for i = 1:N
        fprintf(x_0);
        c = g(x_0);
        err = abs(c - x_0);
        if err < tol
            iter = i;
            return;
        end
        x_0 = c;
    end

    fprintf('Maximum iterations exceeded');
    iter = i;
    err = abs(c - x_0);
    return;
end
