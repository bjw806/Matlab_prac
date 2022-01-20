clc;
clearvars;
close all
format long;

tol = 1e-12;
err = tol+1;
iterN = 0; 
maxN = 1000;
xold = [1;2;3];

while err > tol && iterN < maxN
    iterN = iterN+1;
    xnew = fnc_g(xold);
    err = norm(xold-xnew);
    xold=xnew;
end

display(xold)

function y = fnc_g(x)
    y = [-cos(x(1))/81 + (x(2)*x(2))/9 + sin(x(3))/3;
        sin(x(1))/ + cos(x(3))/3;
        -cos(x(1))/9 + x(2)/3 + sin(x(3))/6];
end

