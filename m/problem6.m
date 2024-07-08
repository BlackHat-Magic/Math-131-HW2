clc; close all; clear variables;

function [c, iter, err] = newtons_method(f, fp, x_0, tol, n)
    for i = 1:n
        try
            f_prime = fp(x_0);
        catch ME
            if strcmp(ME.identifier, 'MATLAB:overflow')
                fprintf('Function diverges');
                c = Inf;
                iter = i;
                err = Inf;
                return;
            else
                fprintf(['Other error: ', ME.message]);
                return;
            end
        end

        c = x_0 - f(x_0) / f_prime;
        err = abs(c - x_0);

        if err < tol
            iter = i;
            return;
        end
        if f(c) == 0
            iter = i;
            return;
        end
        x_0 = c;
    end
    fprintf('Maximum iterations exceeded');
    iter = i;
    return;
end