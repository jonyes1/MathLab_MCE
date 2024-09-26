% Dados dos pontos
x = [-1, 1, 2]';
y = [log(0.4), log(5.4), log(8.3)]';

% Função de ajuste
f = @(p,x) (2^(p(1)*x + p(2)));

% Função objetivo (soma dos quadrados dos erros)
objective = @(p) sum((y - f(p,x)).^2);

% Valores iniciais para a e b
initial_guess = [1, 1];

% Otimização usando fminsearch
params = fminsearch(objective, initial_guess);

% Resultados
a = params(1);
b = params(2);

% Mostrar resultados com 5 casas decimais
fprintf('a = %.5f\n', a);
fprintf('b = %.5f\n', b);