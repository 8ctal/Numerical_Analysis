function [P] = my_LagrangePolynomial_juan_jaimes(X, Y)
    % Check the number of points
    n = length(X);
    
    % Define the Lagrange polynomial as an anonymous function
    P = @(x) 0;  % Start with a zero polynomial
    
    % Compute the Lagrange polynomial
    for i = 1:n
        % Initialize the Lagrange basis polynomial L_i(x)
        L_i = @(x) 1;
        
        % Calculate the product term for L_i(x)
        for j = 1:n
            if j ~= i
                L_i = @(x) L_i(x) .* (x - X(j)) / (X(i) - X(j)); 
            end
        end
        
        % Add the contribution of y_i * L_i(x) to the full polynomial P(x)
        P = @(x) P(x) + Y(i) * L_i(x);
    end
end
