function [sol] = MetBisseccao2(a,b,Nit)
i=1;
valora=Ex2Bisseccao(a);
while i <= Nit
    sol=(a+b)/2;
    valorsol=Ex2Bisseccao(sol);
    fprintf("iteracao %d: %.10f\n", i, sol);
    i=i+1;
    if valora*valorsol > 0
        a=sol;
    else
        b=sol;
    end
end
