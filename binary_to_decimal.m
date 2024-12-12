function D = binary_to_decimal(P, M, E)

    % Convert the binary string P to a decimal number
    decimal_value = bin2dec(P);
    
    % Apply the multiplier
    multiplied_value = decimal_value * M;
    
    % Apply the exponent
    D = multiplied_value ^ E;
end
