function y = funcaoramos(x)
    if x>=-pi && x<=pi
           y = cos(x) + 1;

    elseif x > pi && x<=2*pi
           y = (sin(x)).^2;
     
    else
        y=0;

    end
end    