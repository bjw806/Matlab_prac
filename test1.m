%%
clearvars
clc

%%
x=0:0.01:2;
y=x.^2./(x.^3+1);

%%
figure;
plot(x,y,'k:','LineWidth',4);
xlabel('x');
ylabel('y');
title('plot given function');
