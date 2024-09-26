function y = lagrangeaula(X,Y,x)
    if(length(X) == length(Y))
            if(min(X)<= x && max(X)>= x)
                n = length(X);
                l = ones(n,1);
                P=0;
                for i=1: n
                    for j = 1:n
                        if j ~= i
                            l(i) = l(i)*(x-X(j))/(X(i)-X(j));
                        
                        end 
                    end
                     P = P + Y(i)*l(i);%*(x);
                end
                y=P;
            else
                disp('Extrapolação')
                return
    
            end
    else
        disp('Vetores com comprimentos diferentes')
    end
end




