function approx = newton(f,pNot,epsilon)
    i = 1;
    n = 40;
    df = diff(f);
    
    while i < n
        p = double(pNot - subs(f,pNot)/subs(df,pNot));
        if abs(pNot-p) < epsilon
            approx = p;
            sprintf('The approximation for Newtons method is %d at iteration %d',approx,i)
            return
        end
        i = i + 1;
        pNot = p;
    end
end

