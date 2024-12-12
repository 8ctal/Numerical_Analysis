function [P,M_bin,E_bin] = floating_point_function_jaimes_avila(N)


% Check if the number is negative (determine the sign bit)
if N < 0
    S = 1;
    N = abs(N);  % Work with the absolute value for the rest of the process
else
    S = 0;
end

% Special case for zero
if N == 0
    P = ['0', repmat('0', 1, 15)]; % 1 bit sign, 5 bits exponent (all zeros), 10 bits mantissa (all zeros)
    fprintf('Floating-point representation of %.10f is %s\n', N, P);
    return;
end

% Convert the number to binary representation
binaryStr = dec2bin(typecast(single(N), 'uint32'), 32); % 32-bit binary representation of the single-precision float

% Extract the exponent and mantissa from the binary representation
exponentBin = binaryStr(2:9); % 8 bits exponent in IEEE 754 format
mantissaBin = binaryStr(10:end); % Remaining bits are mantissa

% Convert exponent to decimal and adjust for bias (bias = 127 for single precision)
E = bin2dec(exponentBin) - 127;
E = E + 15; % Adjust for 5-bit bias (15 for this representation)

% Convert exponent to 5-bit binary
E_bin = dec2bin(E, 5);

% Get the first 10 bits of mantissa
M_bin = mantissaBin(1:10); % Extract the first 10 bits of the mantissa

% Combine sign, exponent, and mantissa
P = [num2str(S), E_bin, M_bin];

% Display the floating-point representation
fprintf('Floating-point representation of %.10f is %s\n', N, P);
end