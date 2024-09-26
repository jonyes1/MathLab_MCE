function J = jacobiano(x)

J=ones(2,2);
J(1,1)=-2*x(1) +2;

%%J(1,2) = 1;

J(2,1) = 2*x(1);
J(1,2) = 8*x(2);

end