clc;
clearvars;
close all

d1=[-5, 18]; 
d2=[ 0, -12]; 
d3=[ 2, -10]; 
t1=d1(1); y1=d1(2);
t2=d2(1); y2=d2(2);
t3=d3(1); y3=d3(2);
t=linspace(-10,10);
N1=1;
N2=(t-t1);
N3=(t-t1).*(t-t2);

A=[
1 0 0 ;
1 t2-t1 0 ;
1 t3-t1 (t3-t1)*(t3-t2);
];
y=[y1; y2; y3];
x=A\y;
p=x(1)*N1 + x(2)*N2 + x(3)*N3;

figure;
plot(t,p,'k-','LineWidth',2);
