function [X] = my_Solution_Juan_Jaimes(L,U, b)

    [m, ~] = size(L);
    [r, ~] = size(U);
    Y = zeros(m, 1);
    X = zeros(r,1);
    
    % forward substitution
    for i = 1:m
        sum = 0;
        for j = 1:i-1
            sum = sum + L(i, j) * Y(j);
        end
        Y(i) = (b(i) - sum) / L(i, i);
    end

    Y

    %backward substitution
    for k=flip(1:r)
        sum=0;
        for j=k+1:r
            sum=sum+U(k,j)*X(j);
        end
        X(k)=(Y(k)-sum)/U(k,k);
    end

end
