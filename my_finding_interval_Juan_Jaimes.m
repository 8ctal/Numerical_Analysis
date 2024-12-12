function [limit1,limit2] = my_finding_interval_Juan_Jaimes(g)
tamano = 2;
Iter=100;
a=0;
b=1;
    % Inicializa p en caso de que no se encuentre un intervalo adecuado
    p = NaN;

    % Iteramos
    for k = 1:Iter
        fa = g(a);
        fb = g(b);

        if fa * fb < 0
            limit1= a;
            limit2= b;
            return;
        end

        % Mueve al siguiente intervalo
        a = b;
        b = a + tamano;
    end

    % Si no se encuentra un intervalo adecuado
    warning('No se encontró un intervalo adecuado .');
end
