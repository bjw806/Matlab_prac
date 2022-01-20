clearvars; clc; close all;

t0 = 0;
tend = 1;
y0 = 95;
h = 0.1;
t = t0:h:tend;
N = length(t);

y(1) = y0;
for k = 1:N-1
    yini = y(k)-h*y(k)^3;
    y(k+1) = fnc_apply_newton(yini,h,y(k));
end
yeulr = y;

C = 1/(2*y0^2);
ytrue = sqrt(1./(2*(t+C)));

figure; hold on;
plot(t,ytrue,'k-');
plot(t,yeulr,'r-');
hold off;

function newx = fnc_apply_newton(xini,h,yk)
tol = 1e-16;
MaxIterNum = 1000;
iterN = 0;
ErrorValue = 1;

x = xini;
c = 2*yk; %yk-(h/2)*yk^3;
while ErrorValue > tol && iterN < MaxIterNum
    iterN = iterN+1;
    
    g = (2+5*h)*x-c; %(h/2)*x^3+x-c;
    gp = 2+5*h; %3*(h/2)*x^2+1;
    
    newx = x-g/gp;
    ErrorValue = abs(newx-x);
    x = newx;
end
end