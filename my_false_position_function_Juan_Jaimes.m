function [root, Iter, rel_error] = my_false_position_function_Juan_Jaimes(f, a, b, maxIter, tol)
    % Initialize variables
    Iter = 0;               % Iteration counter
    rel_error = inf;         % Initial relative error
    root = a;                % Initial root guess

    % Ensure that f(a) and f(b) have opposite signs (necessary for the false position method)
    if f(a) * f(b) > 0
        error('f(a) and f(b) must have opposite signs');
    end

    % Main loop
    while Iter < maxIter && rel_error > tol
        % False position formula to find the next approximation of the root
        root_old = root;   % Save previous root value
        root = b - (f(b) * (b - a)) / (f(b) - f(a));

        % Check if we should update 'a' or 'b'
        if f(a) * f(root) < 0
            b = root;  % Root is between a and the new root
        else
            a = root;  % Root is between the new root and b
        end

        % Update relative error
        if Iter > 0
            rel_error = abs((root - root_old) / root);
        end

        % Increment iteration counter
        Iter = Iter + 1;
    end

    % If max iterations reached and error still greater than tolerance
    if rel_error > tol
        warning('Max iterations reached before tolerance was met.');
    end
end
