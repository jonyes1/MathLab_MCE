function [Resultado,Erro] = RegraDosTrapeziosRamos(a,b,n) %n=1
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h = (b-a) / n ;

x = a:h:b;

xCompleto = a:h:b;
f=zeros(1,n+1);

for i=1 : n+1
    f(i)=funcaoramos(x(i));
end

Area = (h/2) * (funcao(a) + 2*sum(funcao(x)) + funcao(b) );

Area = (h/2) * (2*sum(f) - f(1) - f(n+1)) 

Resultado = Area 
end
