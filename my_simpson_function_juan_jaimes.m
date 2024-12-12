% my_simpsons_function_name_lastname.m
function result = my_simpson_function_juan_jaimes(f, a, b, M)
    % Ensure that M is even; if M is odd, increase it by 1
    if mod(M, 2) ~= 0
        M = M + 1;  % Adjust M to be even
        disp(['M was odd, so it has been adjusted to ', num2str(M)]);
    end
    
    h = (b - a) / M;  % Calculate the step size
    sum_f_odd = 0;  % Sum for odd indices
    sum_f_even = 0;  % Sum for even indices
    
    for i = 1:2:M-1
        t_odd = a + i * h;
        sum_f_odd = sum_f_odd + f(t_odd);
    end
    for i = 2:2:M-2
        t_even = a + i * h;
        sum_f_even = sum_f_even + f(t_even);
    end
    
    result = (h / 3) * (f(a) + 4 * sum_f_odd + 2 * sum_f_even + f(b));  % Simpson's rule formula
end
