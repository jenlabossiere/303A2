%% tidy up
clear; clc;

%% Q2.2.6a
syms pNot
p = pNot.*(1+((7-(pNot.^5))/pNot.^2)).^3;
fixedPoint(p,1,10.^-5)

%% Q2.2.6b
syms pNot
p = pNot - (((pNot.^5) - 7)/pNot.^2);
fixedPoint(p,1,10.^-5)

%% Q2.2.6c
syms pNot
p = pNot - (((pNot.^5) - 7)./(5.*(pNot.^4)));
fixedPoint(p,1,10.^-5);

%% Q2.2.6d
syms pNot
p = pNot - (((pNot.^5)-7)/12);
fixedPoint(p,1,10.^-5);

disp('Since (a) and (b) are diverging, and (c) converges at iteration 7 in')
disp('comparison to (d) converging at iteration 355, (c) is fastest, then (d)')

