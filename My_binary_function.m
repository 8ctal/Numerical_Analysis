function [binary_value] = My_binary_function(decimal)
 if mod(decimal, 1) == 0
     
        % Convierte parte entera a binario si decimal >=0
        integer_part = decimal;
        binary_integer = '';
        while integer_part > 0
            remainder = mod(integer_part, 2);
            binary_integer = [num2str(remainder) binary_integer]; %Agrega los residuos de izquierda a derecha
            integer_part = floor(integer_part / 2);
        end

        if isempty(binary_integer)
            binary_integer = '0'; % Caso base para 0
        end
        binary_value = binary_integer;
 else

        % Saca la parte entera y fraccionaria
        integer_part = floor(decimal);
        fraction_part = decimal - integer_part;
        
        % Convierte la parte entera
        binary_integer = '';
        while integer_part > 0
            remainder = mod(integer_part, 2);
            binary_integer = [num2str(remainder) binary_integer];
            integer_part = floor(integer_part / 2);
        end
      
        if isempty(binary_integer)
            binary_integer = '0'; % Caso base para cero
        end
        
        % Convierte la parte fraccional
        binary_fraction = '.';
        while fraction_part > 0 && length(binary_fraction) < 20
            fraction_part = fraction_part * 2;
            bit = floor(fraction_part);
            if bit == 1
                fraction_part = fraction_part - bit;
                binary_fraction = [binary_fraction '1'];
            else
                binary_fraction = [binary_fraction '0'];
            end
        end
        
        binary_value = [binary_integer binary_fraction];
 end
end