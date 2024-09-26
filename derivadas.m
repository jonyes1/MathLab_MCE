
syms x
f=inline('x^2', 'x')


f =
Inline function:
f(x) = x^2
diff(f(x),x)
ans =
2*x