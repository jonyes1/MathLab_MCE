function [X,n] = NEWTON(x0,tol);

x0 = [0;1];
erro = 1000;
n=0;


while erro >= tol
    n=n+1;
    X=x0 - jacobiano(x0)\ funcs(x0);
    erro = norm(X-x0, inf);

    x0=X;

end
end



