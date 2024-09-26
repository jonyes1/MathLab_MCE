%METODO NEWTON
function sol=NewtonSistemas(X0,tol)
% xo -> aproximacao inicial
% verificar se qualquer x pertencente a um intervalo se f(x)f''(x)>0
% tol: |x_{n+1}-x_n| < tol
format long
erro=1;
i=1;
    function Y=F(X) %funcao f
        Y=[X(1)^2 + X(2)^2 - 2; 9*X(1)^2 + X(2)^2 - 9]; %VETOR FUNCOES ALTERAR!
    end
%calcular derivada nos comandos
%syms x
%f=inline('*funcao*', 'x')
%diff(f(x),x)
    function Y=Jac(X) %funcao derivada de f
        Y=[2*X(1), 2*X(2); 18*X(1),2*X(2)];  %Matriz jacobina derivada parciais ALTERAR
    end
while erro>=tol
    fprintf("Iteração %d\n", i);
    Xn=X0-inv(Jac(X0))*F(X0) %Chama a função f e a função df
    erro=norm(Xn-X0, inf) %MUDAR PARA QUE TIPO DE NORMA ELES QUEREM
    X0=Xn;
    
    i=i+1;
end
end