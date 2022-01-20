clear vas
close all
clc

x = linspace(0,pi,11);
y1 = sin(x) - cos (x);
y2 = abs(sin(x) - cos(x));

figure; hold on
plot(x,y1,'k.-','LineWidth',1,'MarkerSize',5);
plot(x,y2,'b.-','LineWidth',2,'MarkerSize',10);
hold off
legend('y1','y2','Location','SouthEast');
xlabel('x');
ylabel('y');

