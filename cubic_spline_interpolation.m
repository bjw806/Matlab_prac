clearvars; clc; close all

t=[-2 0 2];
plotx = linspace(-2,2,201);
y = cos(t);
ploty = cos(plotx);

A = [
    1 t(1) t(1)^2 t(1)^3 0 0 0 0;
    1 t(2) t(2)^2 t(2)^3 0 0 0 0;
    0 0 0 0 1 t(2) t(2)^2 t(2)^3;
    0 0 0 0 1 t(3) t(3)^2 t(3)^3;
    0 1 2*t(2) 3*t(2)^2 0 -1 -2*t(2) -3*t(2)^2;
    0 0 2 6*t(2) 0 0 -2 -6*t(2);
    0 0 2 6*t(1) 0 0 0 0;
    0 0 0 0 0 0 2 6*t(3)];
b = [y(1); y(2); y(2); y(3); 0; 0; 0; 0];
x = A\b;
plotx1 = linspace(-2,0,101);
p1 = x(1)*1 +x(2)*plotx1 + x(3)*plotx1.^2 + x(4)*plotx1.^3;
plotx2 = linspace(0,2,101);
p2 = x(5)*1 +x(6)*plotx2 + x(7)*plotx2.^2 + x(8)*plotx2.^3;

figure; hold on;
plot(plotx,ploty,'k:');
plot(t,y,'ro');
plot(plotx1,p1,'b--');
plot(plotx2,p2,'b--');
hold off;
