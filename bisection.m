function approx = bisection(f,g,a,b,epsilon)
    func = (f - g);
    i = 1;
    n = 25;
    FA = double(subs(func,a));
    
    while i < n
        p = a+(b-a)./2;
        FP = double(subs(func,p));
        if (FP == 0 || (b-a)/2 < epsilon)
            disp(p);
            approx = p;
            sprintf('The approximation for the bisection method is %d at iteration %d', approx, i)
            return
        end
        i = i+1;
        if FA.*FP > 0
            a = p;
            FA = FP;
        else 
            b = p;
        end
    end
end

