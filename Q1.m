%% tidy up
clc; clear;

%% Q9a
format long
syms x f g
f = (exp(x)-2);
g = (cos(exp(x)-2));

fplot(f);
hold on;
fplot(g);

%% Q9b
% I have to use format long to get the fifth decimal place, otherwise it
% only give me 1.0076, even though I know I'm getting more decimal places
% of accuracy. Not sure how to fix.
bisection(f,g,0.5,1.5,10.^-5);



