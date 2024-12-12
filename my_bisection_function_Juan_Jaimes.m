function [root, num_Iter] = my_bisection_function_Juan_Jaimes(fun, a, b, Iter, error)

    error_relativo = inf;

    fa = fun(a);
    fb = fun(b);

    if fa == 0
        root = a;
    elseif fb == 0
        root = b;
    elseif fa * fb > 0
        error('No se puede aplicar el método en ese intervalo');
    else
        while error_relativo > error
            p = (a + b) / 2;
            fp = fun(p);
            
            if fp * fa > 0
                a = p;
                fa = fp;
            elseif fp * fb > 0
                b = p;
                fb = fp;
            end

            error_relativo = abs(b - a);
            Iter = Iter + 1;
        end

        root = p;
    end
    num_Iter = Iter;
end