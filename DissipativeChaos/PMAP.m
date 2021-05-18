clc;
clear all;
close all;
N = 100000;
P = zeros(2,N);
y0 = rand(2,1);
op    = odeset('reltol',1e-8,'abstol',1e-8);
for k = 1:N
[t,x] = ode45('duffing',linspace(0,20*pi/.6,101),y0,op);
y0 = x(end,:)';
P(:,k)=y0;
end

figure(1)
plot(P(1,:),P(2,:),'r.');
axis 'equal'