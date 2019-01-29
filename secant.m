function approx = secant(f,pNot,pOne,epsilon)
    i = 2;
    n = 50;
    qNot = double(subs(f,pNot));
    qOne = double(subs(f,pOne));
    
    while i < n
        p = pOne - ((qOne.*(pOne-pNot))./(qOne-qNot));
        if (abs(p - pOne)) < epsilon
            approx = p;
            sprintf('The approximation for the secant method is %d at iteration %d', approx, i)
            return;
        end
        i = i+1;
        pNot = pOne;
        qNot = qOne;
        pOne = p;
        qOne = double(subs(f,p));
    end
    
end

