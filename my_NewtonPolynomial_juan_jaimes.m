function [P] = my_NewtonPolynomial_juan_jaimes(x, y)
    % Ensure symbolic toolbox is available
    syms X;
    n = length(x);  % Number of data points
    a = y;           % Initialize the coefficients a_i with y values

    % Compute divided differences
    for j = 2:n
        for i = n:-1:j
            a(i) = (a(i) - a(i-1)) / (x(i) - x(i-j+1));
        end
    end
    
    % Construct the Newton polynomial symbolically
    P = a(n);  % Start with the last coefficient
    for i = n-1:-1:1
        P = a(i) + (X - x(i)) * P;  % Multiply by the corresponding factor (X - x_i)
    end
end
