% Definindo o intervalo de x
x = -1:0.1:1;

% Calculando as funções
y1 = sin(x) + 1 - 2*x;

% Plotando os gráficos
plot(x, y1);

% Adicionando a legenda
legend('y1 = x', 'y2 = e^{-x}');
