% Dados de entrada (substitua pelos seus próprios dados)
x = [1, 1.5, 2, 3]; % Valores de x
y = [1.6, 1.7, 2, 2.3]; % Valores de y

% Aproximação usando mínimos quadrados
A = [x', ones(size(x'))]; % Matriz de coeficientes
params = A \ y'; % Resolvendo o sistema linear

% Parâmetros encontrados
a = params(1);
b = params(2);

fprintf('Parâmetros encontrados:\n');
fprintf('a = %.4f\n', a);
fprintf('b = %.4f\n', b);