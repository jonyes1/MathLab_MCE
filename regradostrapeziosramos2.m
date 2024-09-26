function resultado = regradostrapeziosramos2()
    % Define the interval
    a = 0.15;
    b = 0.25;
    n = 10; % Number of subintervals

    h = (b - a) / n; % Step size
    x = a:h:b; % x values
    y = arrayfun(@funcaoramos, x); % y values

    % Apply the trapezoidal rule
    T = y(1) + y(end) + 2 * sum(y(2:end-1));
    resultado = (h / 2) * T;

    % Display the result with 7 decimal places
    fprintf('Resultado usando a regra dos trapézios: %.7f\n', resultado);
end

function y = funcaoramos(x)
    if x >= 0 && x <= 0.1
        y = x^3 + 1;
    elseif x > 0.1 && x <= 0.2
        y = 1.001 + 0.03 * (x - 0.1) + 0.3 * (x - 0.1)^2 + 2 * (x - 0.1)^3;
    elseif x > 0.2 && x <= 0.3
        y = 1.009 + 0.15 * (x - 0.2) + 0.9 * (x - 0.2)^2 + 2 * (x - 0.2)^3;
    else
        y = NaN; % Outside the defined intervals
    end
end
