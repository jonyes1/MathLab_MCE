function I=simp(a,b,n) %n=2
%n tem de ser par intervalo imper n da
format long
if(mod(n,2) ~= 0)
fprintf("N tem de ser numero par")
return
end
h=(b-a)/n;
x=a:h:b;
I=0;
for i=1:n/2 % soma dos valores da funcao com coeficiente 4
I=I+4*funcao(x(2*i));
end
for i=2:n/2 % soma dos valores da funcao com coeficiente 2
I=I+2*funcao(x(2*i-1));
end
I=I+funcao(a)+funcao(b);% soma dos valores de coeficiente 1

I=I*h/3% calculo final
end