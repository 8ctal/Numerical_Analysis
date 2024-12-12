function P= my_fixed_point_function_Juan_Jaimes(g,p0,Iter);
  % Iteración de punto fijo
    for k = 1:Iter
        p = g(p0); % Fórmula de iteración de punto fijo
        fprintf('Iteración %d: p = %f\n', k, p);
        
        % Actualizar p0 para la siguiente iteración
        p0 = p;
    end
    
    % Mostrar el resultado final
    P = p0;
end
