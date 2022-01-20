 function prey
 %Predator-prey Model
 clc;clear;
 y0 = [100;10];
 soln = ode45(@f2,[0 100],y0);
 t = linspace(0,25);
 y(:,1)=deval(soln,t,1); %Prey
 y(:,2)=deval(soln,t,2); %Predator
 figure;
 plot(t,y(:,1),'-.',t,y(:,2),'--');
 hold on;grid on;
 legend('먹이','포식자');
 xlabel('Time');
 ylabel('Population');
 hold off;
 end
 %Predator-prey function
 function dxdt = f2(t,x)
 dxdt = [0;0];
 p =1; q = 0.1; r = 0.02; s = 0.5;
 dxdt(1) = p*x(1)-q*x(1)*x(2);
 dxdt(2) = r*x(1)*x(2)-s*x(2);
 end