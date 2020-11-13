function y=code(n, M, alpha, x)
    if n < 0
        y = 0;
    else
        if n < M
           y = x(n+1);
        else
           y = alpha*code(n-M, M, alpha, x); 
        end
    end
end