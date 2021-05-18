clc;
close all;
clear all;
op = odeset('reltol',1e-12,'abstol',1e-12);
[t,x] = ode45('wkb1',[3,20],[1;0],op);
figure(1)
%plot(t,x(:,1),'r');

tau = (2/5)*t.^(5/2);
xa=1.7*(1./tau.^(3/10)).*cos(tau);

plot(t,x(:,1),'r',t,xa,'g');
xlabel('t')
ylabel('x')
legend('x_real','x_appr')
