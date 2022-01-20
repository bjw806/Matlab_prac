clc;
clearvars;
close all

d1=[-5, 18]; t1=d1(1); y1=d1(2);
d2=[ 0, -12]; t2=d2(1); y2=d2(2);
d3=[ 2, -10]; t3=d3(1); y3=d3(2);
d=[d1; d2; d3];
A=[1 t1 t1^2; 1 t2 t2^2; 1 t3 t3^2];
y=[y1; y2; y3];
x=A\y

data_points=[-5 18; 0 -12; 2 -10];
data_t=data_points(:,1);
data_y=data_points(:,2);
n=length(data_t);
c=(min(data_t)+max(data_t))/2;
d=(max(data_t)-min(data_t))/2;
data_t=(data_t-c)/d;
mat_A=[ones(n,1) data_t data_t.^2];
coef_x=mat_A\data_y;
plot_t=linspace(-10,10);
intp_p=coef_x(1)+coef_x(2)*plot_t+coef_x(3)*plot_t.^2;

figure;
plot(plot_t,intp_p,'k-','LineWidth',2);
