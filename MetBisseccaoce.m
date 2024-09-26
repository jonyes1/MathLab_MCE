function [sol] = MetBisseccaoce(a,b,Nit, errodado) %a=valor inferior    b=valor superior     NIT=numero iterações 
    format long
    i=1; %inicia se o iterador a 1
    erro=10;
    x0=a;
    valora=Ex1Bisseccao(a);  %ir à função EX1Bisseccao substituir a função
    while (i <= Nit  && erro >= errodado)
        sol=(a+b)/2;   %ponto medio
        erro=abs(x0-sol);  %calcula o erro, que é o ponto -ponto medio
        fprintf("iteração %d->\nvalor aproximado:%.10f\n", i, sol);
        valorsol=Ex1Bisseccao(sol);
        i=i+1;
        if valora*valorsol > 0
            a=sol;
        else
            b=sol;

        end
        x0=sol %o sol é o ultimo valor iterado
    end
end