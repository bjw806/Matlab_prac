% -- initialize
clearvars; clc; close all

% -- number of subintervals
n = 8

% -- integration domain
a = 0;
b = 4;
x = linspace(a,b,n+1);
dx = (b-a)/n;
% -- numerical integration
integ_m = sum( f((x(1:n)+x(2:n+1))/2) )*dx
integ_t = ((b-a)/(2*n))*( f(x(1))+f(x(n+1)) +2*sum(f(x(2:n))) )
integ_s = ((b-a)/(3*n))*( f(x(1))+f(x(n+1)) +4*sum(f(x(2:2:n)))+2*sum(f(x(3:2:n))) )

% -- define function
function y = f(x)
y = 4*x.^3;
end