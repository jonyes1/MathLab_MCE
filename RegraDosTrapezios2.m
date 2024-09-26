function resultado = RegraDosSimpRamos2()
    % Define the interval
    a = pi/2;
    b = 4*pi/3;
    n = 10; % Number of subintervals

    % Ensure n is even for Simpson's rule
    if mod(n, 2) ~= 0
        error('Number of subintervals must be even.');
    end

    h = (b - a) / n; % Step size
    x = a:h:b; % x values
    y = arrayfun(@funcaoramos, x); % y values

    % Apply Simpson's rule
    S = y(1) + y(end) + 4 * sum(y(2:2:end-1)) + 2 * sum(y(3:2:end-2));
    resultado = (h / 3) * S;

    % Display the result with 7 decimal places
    fprintf('Resultado: %.7f\n', resultado);
end

function y = funcaoramos(x)
    if x >= -pi && x <= pi
        y = cos(x) + 1;
    elseif x > pi && x <= 2*pi
        y = (sin(x)).^2;
    else
        y = 0;
    end
end
