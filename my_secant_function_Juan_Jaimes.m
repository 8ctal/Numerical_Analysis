function root = my_secant_function_Juan_Jaimes(fun, p0, p1, Iter)
    u = feval(fun, p0);
    v = feval(fun, p1);
    c = 0;

    while abs(u) > Iter
        p = p0 - u * (p1 - p0) / (v - u);
        p0 = p1;
        p1 = p;

        u = feval(fun, p0);
        v = feval(fun, p1);
        
        c = c + 1;
    end

    if abs(u) > Iter
        error('El método de la secante no converge en el número máximo de iteraciones');
    end

    root = p;
end
