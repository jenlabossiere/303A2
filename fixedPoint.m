function approximation = fixedPoint(p,pNot,epsilon)
    i = 1;
    n = 356;
    
    while i < n
        pNew = double(subs(p,pNot));
        value = abs(pNew - pNot);
        if (value < epsilon)
            sprintf('The approximation for the fixed point method is: %d at iteration %d', pNew, i)
            approximation = pNew; 
            return
        end
        i = i+1;
        pNot = pNew;
    end
    disp('This approximation diverges, and does not have an answer')
    
end

