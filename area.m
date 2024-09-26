% Função que representa a diferença das curvas
f = @(x) (x.^2 + 7) - x.^3;

% Intervalo e número de subintervalos
a = 0;
b = 1;
n = 6;
dx = (b - a) / n;

% Pontos de divisão
x = linspace(a, b, n + 1);
y = f(x);

% Aplicar a regra dos trapézios
A = (dx / 2) * (y(1) + 2 * sum(y(2:end-1)) + y(end));

% Exibir o resultado
fprintf('A área calculada é: %.7f\n', A);
