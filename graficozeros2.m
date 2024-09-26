% Definindo o intervalo de x
x = -1:0.1:1;
y = -1:0.1:1;

% Calculando as funções
y1 = - sqrt((-x.^2)+1);
y2 = x;


% Plotando os gráficos
plot(x, y1, x, y2);

% Adicionando a legenda
%%legend('y1 = atan(x)', 'y2 = -x-1','y2 = funcao' );
