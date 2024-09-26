function [sol] = MetBisseccao1(a,b,Nit)
i=1;
valora=Ex1Bisseccao(a);
while i <= Nit
    sol=(a+b)/2;
    valorsol=Ex1Bisseccao(sol);
    i=i+1;
    if valora*valorsol > 0
        a=sol;
    else
        b=sol;
    end
end
