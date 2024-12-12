% my_trapezoidal_function_name_lastname.m
function result = my_trapezoidal_function_juan_jaimes(f, a, b, M)
    % Calculate the step size
    h = (b - a) / M;
    
    % Initialize the sum
    sum_f = 0;s
    
    % Compute the sum of function values at interior points
    for i = 1:M-1
        x_i = a + i * h;
        sum_f = sum_f + f(x_i);
    end
    
    % Compute the final result using the trapezoidal rule formula
    result = (h / 2) * (f(a) + 2 * sum_f + f(b));
end
