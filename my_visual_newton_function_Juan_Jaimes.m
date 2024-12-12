function root = my_visual_newton_function_Juan_Jaimes(fun, p0, der, Iter)
    x_valores = zeros(1, Iter);  % Almacena los valores de las iteraciones
    tol = 1e-6; 
    
    % Definir un rango para graficar la función original
    x_range = linspace(p0 - 15, p0 + 5, 400);
    y_range = arrayfun(fun, x_range); 

    figure;
    plot(x_range, y_range, 'b-', 'LineWidth', 1.5); % Graficar la función original
    hold on;
    xlabel('x');
    ylabel('f(x)');
    title('Método de Newton-Raphson');
    grid on;

    for k = 1:Iter
        fk = fun(p0);
        fpk = der(p0);
        xk = p0 - fk / fpk; % Aplicación del método de Newton-Raphson
        
        
        x_valores(k) = xk;
        
        % Graficar la tangente en el punto actual
        x_tangent = linspace(p0 - 1, p0 + 1, 100); 
        y_tangent = fk + fpk * (x_tangent - p0); 
        
        plot(x_tangent, y_tangent, 'r--', 'LineWidth', 1); % Graficar la tangente
        plot(p0, fk, 'ko', 'MarkerFaceColor', 'g'); % Punto actual en la curva
        
        % Actualizar p0 para la siguiente iteración
        p0 = xk;
        
        if abs(fun(xk)) < tol
            break;
        end
        
        pause(0.5); 
    end

    % Graficar los valores de x obtenidos en cada iteración
    plot(x_valores(1:k), zeros(1, k), 'bo-', 'LineWidth', 1.5); 
    
    legend('f(x)', 'Tangente', 'Iteraciones', 'Location', 'Best');
    hold off;
    
    % Devolver el valor de la raíz obtenida en la última iteración
    root = xk;
end
