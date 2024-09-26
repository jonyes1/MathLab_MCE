function [I,E] = RT(a,b,n)


if n==1
    I=(b-a)*(func(a)+func(b))/2;
    return
end
h= (b-a)/n;x= a:h:b;
f = funcao(x);

I= f(1)+f(n+1);
    for i=2:n
        I = I+2*f(i);
    end
       I = h*I/2;
       E=0;
end       

