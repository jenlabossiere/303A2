%% tidy up
clear; clc;

%% Q2.3.6b
syms x
f = log(x-1) + cos(x-1);
newton(f,1.5,10.^-5);

%% Q2.3.8b
syms x
f = log(x-1) + cos(x-1);
secant(f,1.3,2,10.^-5);


