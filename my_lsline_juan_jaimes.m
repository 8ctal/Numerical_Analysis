function [A, B] = my_lsline_juan_jaimes(x, y)
    % Input: x and y are the vectors of data points
    % Output: A (slope) and B (intercept) of the least-squares line

    % Number of data points
    N = length(x);

    % Compute the necessary sums
    Sx = sum(x);
    Sy = sum(y);
    Sxx = sum(x.^2);
    Sxy = sum(x .* y);

    % Calculate the slope A and intercept B using the normal equations
    A = (N * Sxy - Sx * Sy) / (N * Sxx - Sx^2);
    B = (Sy - A * Sx) / N;
end
