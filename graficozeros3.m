%Definindo o intervalo de x
x = -1:0.1:1;

% Calculando as funções
y1 = asin(2*x-1);

% Plotando os gráficos
plot(x, y1);

% Adicionando a legenda
legend('y1 = atan(x)', 'y2 = -x-1','y2 = funcao' );