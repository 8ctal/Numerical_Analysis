function root = my_newton_function_Juan_Jaimes(fun, p0, der, Iter,error)
fprintf('%-3s %-20s %15s %30s %33s\n', 'k', 'xk', 'f(xk)', 'f''(xk)', '|xk - xk-1|');

for k = 1:Iter
    fk = fun(p0);
    fpk = der(p0);
    xk = p0 - fk / fpk;
    abs_error = abs(xk - p0);

    fprintf('%10d %-30.6f %-30.6f %-30.6f %-30.6f\n', k, xk, fk, fpk, abs_error);

    if abs_error < error
        fprintf('Raiz encontrada.\n');
        fprintf('\n');
        break;
    end

    p0 = xk;
end

root = xk;
end