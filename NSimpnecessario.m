function [h, n, n_adjusted, M] = NSimpnecessario(a, b, erro)

    % Cálculo do passo h
    h = erro * 180;
    c = b - a;
    xCompleto = a:0.01:b;
    M =76*(exp(xCompleto)) ;%se for exp
    c2 = c * max(M);  % Usa o valor máximo de M para obter um escalar
    h = h / c2;
    h = sqrt(sqrt(h));
    
    % Calcula o número de intervalos n
    n = (b - a) / h;
    
    % Verifica e ajusta n para ser par, se necessário
    n_adjusted = ceil(n);
    if mod(n_adjusted, 2) == 1
        n_adjusted = n_adjusted + 1;
    end
    
    % Recalcula h baseado em n ajustado
    h = (b - a) / n_adjusted;

    fprintf('O número de intervalos n calculado é %.2f.\n', n);
    fprintf('O número de intervalos ajustado para ser par é %d.\n', n_adjusted);
    fprintf('O valor de h ajustado é %.6f.\n', h);
end
