function sol=MetodoNewton(x0,tol)
% xo -> aproximacao inicial
% tol: |x_{n+1}-x_n| < tol
format long
erro=1;
    function y=f(x) %funcao f
        y= exp(6*x) + 1.441*exp(4*x)-0.3330;
    end
    function dy=df(x) %funcao derivada de f
        dy=6*exp(6*x) + 4*(1.441*exp(4*x));
    end
while erro>=tol
    xn=x0-(f(x0))/(df(x0)); %Chama a função f e a função df
    erro=abs(xn-x0);
    x0=xn;
    fprintf('Valor aproximado é:%.10f e o erro é %.20f\n', x0, erro);
end
end

