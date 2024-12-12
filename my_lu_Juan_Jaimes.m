function [L, U, P] = my_lu_Juan_Jaimes(A)
    [m, n] = size(A);
    L = eye(m); % Identity Matrix
    P = eye(m); % Permutation Matrix

    for k = 1:n
        if A(k, k) == 0
            for g = k+1:m
                if A(g, k) ~= 0
                    
                    A([k, g], :) = A([g, k], :);
                    
                    P([k, g], :) = P([g, k], :);
                    
                    if k > 1
                        L([k, g], 1:k-1) = L([g, k], 1:k-1);
                    end
                    break;
                end
            end
        end
        for i = k+1:m
            L(i, k) = A(i, k) / A(k, k); % Elemento pivote
            for j = k+1:n
                A(i, j) = A(i, j) - L(i, k) * A(k, j);
            end
        end
    end
    
    U = triu(A);
end
