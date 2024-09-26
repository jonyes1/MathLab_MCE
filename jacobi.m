function [X,n] = jacobi(A,b,tol,norma)
    if det(A) ~= 0
        n=0;
        D = diag(diag(A));
        L = tril(-A,-1);
        U = triu(-A,1);
        M = D\(L+U);
        N = D\b;
        rho = max(abs(eig(M)));
        if rho < 1
            erro = 1000;
            Xa = zeros(size(A,1),1); %5 * ones(size(A,2),1), coluna a 5 5 5 5 5
            while erro >= tol
                X = M * Xa + N;
                %erro = norm(X-Xa,norma)
                erro = norm(X-Xa,norma) / norm(X,norma);%infinito -> info
                %erro = norm(A* X - b,2) %erro |f(x)|
                n = n+1;
                Xa = X;
            end
        end

    end
    fprintf('n=%d, erro=%d',n,erro)
end
