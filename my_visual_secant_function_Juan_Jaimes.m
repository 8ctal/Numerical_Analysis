function my_visual_secant_function_Juan_Jaimes(fun, p0, p1, Iter)
    % Inicializa vectores para almacenar datos
    x_values = zeros(1, Iter+1);
    y_values = zeros(1, Iter+1);

    x_values(1) = p0;
    x_values(2) = p1;
    y_values(1) = feval(fun, p0);
    y_values(2) = feval(fun, p1);

    for i = 3:Iter+1
        x_values(i) = x_values(i-1) - y_values(i-1) * (x_values(i-1) - x_values(i-2)) / (y_values(i-1) - y_values(i-2));
        y_values(i) = feval(fun, x_values(i));
    end

    x_range = linspace(min(x_values), max(x_values), 100);
    y_range = arrayfun(@(x) feval(fun, x), x_range);  % Evaluación de la función en puntos individuales

    figure;
    plot(x_range, y_range, 'DisplayName', 'f(x)');
    hold on;
    plot(x_values, y_values, '-o', 'DisplayName', 'Secante');
    title('Comportamiento del Método de la Secante');
    xlabel('x');
    ylabel('f(x)');
    legend('show');
    grid on;
    hold off;
end
