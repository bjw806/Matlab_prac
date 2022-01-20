clearvars
clc

x=-10:0.01:10;
y = cos(5*x) - x;
y0 = 0*x;


figure;
plot(x,y,'k-','LineWidth',2);
hold on
plot(x,y0,'k-','LineWidth',2);
hold off
