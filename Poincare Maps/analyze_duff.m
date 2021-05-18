clc;
close all;
clear all;

op=odeset('reltol',1e-12,'abstol',1e-12);
[t,x]=ode45('duffing',[0,100*pi/.4],randn(2,1),op);
figure(1)
%plot(t,x(:,1));
x0 = x(end,:)';
[t1,x1]=ode45('duffing',[0,76*pi/.4],x0+rand(2,1)*1e-14,op);
[t,x]=ode45('duffing',t1,x0,op);

plot(t,x(:,1),t1,x1(:,1));
legend('IC','Perturbed IC')
[t,x]=ode45('duffing',t1,x0,op);
saveas(gcf,'Perturbed_IC_chaos.jpg')


figure(2)
semilogy(t,abs(x(:,1)-x1(:,1)));
%plot(x(:,1),x(:,2),'.');
saveas(gcf,'semilog_absdiff_IC_chaos.jpg')
figure(3)
plot(t,abs(x(:,1)-x1(:,1)));
saveas(gcf,'absdiff_IC_chaos.jpg')
figure(4)
[t,x]=ode45('duffing',linspace(0,1000*pi/.4,501),x0,op);
plot(x(:,1),x(:,2),'.');
hold on;
for i=1:200
    x0=x(end,:)';
    [t,x]=ode45('duffing',linspace(0,1000*pi/.4,501),x0,op);
    plot(x(:,1),x(:,2),'r.');
end
hold off
title("Phase Portrait")
xlabel("x1")
ylabel("x2")
saveas(gcf,'phase_port_IC_chaos.jpg')
