function MetPontoFixo(x0,k)
% x0 -> aproximacao inicial
% k -> nº de iteracoes
for j=1:k
    xn = exp(6*x) + 1.441*exp(4*x)-0.3330;
    x0=xn;
end
end