clc;
close all;
clear all;
op = odeset('reltol',1e-12,'abstol',1e-12);
[t,x] = ode45('wkb2',[3,20],[1;0],op);
figure(1)
%plot(t,x(:,1),'r');

tau = (1/3)*t.^(3);
xa=2.11*(1./tau.^(1/3)).*sin(tau-1.1);

plot(t,x(:,1),'r',t,xa,'g');
xlabel('t')
ylabel('x')
legend('x_real','x_appr')
