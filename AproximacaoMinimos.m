function [a,b] = AproximacaoMinimos(x,y)
plot(x,y,'rx','MarkerSize',15)
xlabel('Intensidade do canto dos grilos')
ylabel('Temperatura')
% definicao da matriz A das equacoes normais
format long
n=length(x);
A=[x;ones(1,n)];
B=inv(A*(A'));
sol=B*A*y';
a=sol(1)
b=sol(2)
newy=b+a*x;
%newy=2.^(ax+b);

%alineas_
newy2=2.^(0.92*x+1.4);
newy3=2.^(1.91*x+0.58);
newy4=2.^(2.03*x+0.71);
newy5=2.^(1.13*x+1.61);

%erros:
erro=sqrt(sum((y-(newy)).^2))
erro2=sqrt(sum((y-(newy2)).^2))
erro3=sqrt(sum((y-(newy3)).^2))
erro4=sqrt(sum((y-(newy4)).^2))
erro5=sqrt(sum((y-(newy4)).^2))

hold on;
%plot(x,reta(x),"b","MarkerSize",15)
plot(x,newy)
plot(x,newy2)
plot(x,newy3)
plot(x,newy4)
plot(x,newy5)
hold off;
legend('Dados', 'reta1', 'reta2', 'reta3','reta4','reta5' )