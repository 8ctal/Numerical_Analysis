function decimal = My_decimal_function(binary)

% Revisamos si el binario tiene punto de fraccion

    if contains(binary, '.')

        % Divide el numero binario en su parte entera(1) y su parte fraccionaria(2)
        parts = split(binary, '.');
        integerPart = parts{1};
        fractionalPart = parts{2};

    else

        integerPart = binary;
        fractionalPart = '';

    end

    % Convierte la parte entera binaria a decimal

    integerDecimal = 0;

    if ~isempty(integerPart)

        len = length(integerPart);
        integerPart = flip(integerPart); %Volteamos la parte entera para que coincidan con los índices
        for i = 1:len

            if integerPart(i) == '1'

                integerDecimal = integerDecimal + 2^(i-1);

            end
        end

    end


    % Convertimos la parte fraccionaria binaria a decimal

    fractionalDecimal = 0;

    if ~isempty(fractionalPart)

        len = length(fractionalPart);

        for i = 1:len

            if fractionalPart(i) == '1'

                fractionalDecimal = fractionalDecimal + 2^(-i);

            end

        end

    end


    % Combinamos la parte entera y fraccionaria

    decimal = integerDecimal + fractionalDecimal;

end