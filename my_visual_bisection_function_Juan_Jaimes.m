function P=my_visual_bisection_function_Juan_Jaimes(fun,a,b,Iter)
x_values = linspace(a, b, 1000);
    y_values = fun(x_values);

    % Trazar la función
    figure;
    plot(x_values, y_values, 'LineWidth', 2);
    hold on;
    grid on;

    % Trazar puntos iniciales
    plot(a, fun(a), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    plot(b, fun(b), 'ro', 'MarkerSize', 10, 'LineWidth', 2);

    % Realizar iteraciones de bisección
    for k = 1:Iter
        c = (a + b) / 2;
        fc = fun(c);

        % Trazar el punto medio
        plot(c, fc, 'go', 'MarkerSize', 8, 'LineWidth', 2);

        % Comprobar convergencia
        if sign(fc) == sign(fun(a))
            a = c;
        else
            b = c;
        end

        % Pausa para visualización
        pause(1);

        % Trazar el intervalo
        plot([a, b], [fun(a), fun(b)], 'k--', 'LineWidth', 2);
    end

    % Marcar el resultado final
    plot(c, fc, 'rx', 'MarkerSize', 12, 'LineWidth', 2);
    P = c;
    % Agregar etiquetas y título
    xlabel('x');
    ylabel('y');
    title('Visualización del Método de Bisección');
    legend('Función', 'Puntos Iniciales', 'Intervalo', 'Resultado Final');
    hold off;
end