clc;
clear all;
close all;
op     = odeset('reltol',1e-7,'abstol',1e-7);
[t,x]  = ode45('Ftx',[0,120*pi],randn(3,1),op);
%figure(1)
%plot(t,x);
%legend('x1','x2','x3') 
figure(2)
plot(t,log(abs(x)));
x = ginput(2)
y = x(:,2);
x = x(:,1);
polyfit(x,y,1)
c = exp(ans*2*pi);