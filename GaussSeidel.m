function GaussSeidel(A,b,tol, imax)
% A -> a matriz dos coeficientes do sistema
% b -> vetor dos termos independentes
% tol -> o limite inferior para a norma infinito da diferenca entre duas
% aproximaoes consecutivas
format long;
i=0;
erro=1;
D=diag(diag(A)); %Matriz D
L=-tril(A,-1); % Matriz L
U=-triu(A,1); % Matriz U
M=inv(D-L)*U; % matriz de iteracao
d=inv(D-L)*b; % vetor d
x0=zeros(length(b),1); x0(1)=0; % aproximacao inicial do ex. 2 (b)
while erro >=tol && i< imax
    xn=M*x0+d;
    erro=norm(xn-x0,inf); % inf-> norma infinita  pode pedir para mudar para por exemplo norma 2!
    i=i+1;
    fprintf("Iteração %d\n", i);
    x0=xn
end
end