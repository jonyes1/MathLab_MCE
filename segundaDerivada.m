% Defina a função para a qual você deseja calcular a derivada
syms x
f = input('Escreve a função f(x): ','s');
f = inline(f);

% Calcule a derivada
dy_dx = diff(f(x), x);
dy_dx = diff(dy_dx, x)