function [h,n] = Nnecessario(a,b,erro)
format long
        h = erro * 12;
        c= b-a;
        xCompleto = a:0.01:b;
        %abs opcional abs = modulo
        M = 3;
        c2 = c * M;
        h=h/c2;
        h = sqrt(h)

        n = (b-a)/h
        %n = n+1
end
