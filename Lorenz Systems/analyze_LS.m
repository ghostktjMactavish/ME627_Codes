clc;
clear all;
close all;

op=odeset('reltol',1e-12,'abstol',1e-12);

q0=randn(3,1);
[t,q]=ode45('LS',[0,50],q0,op);

%plot(t,q);

q0=q(end,:)';
[t,q] = ode45('LS',[0,300],q0,op);
q0   = q0+randn(3,1)*1e-13;
[t,q1]= ode45('LS',t,q0,op);
% figure(1)
% semilogy(t,abs(q(:,1)-q1(:,1)));
% xlabel('t');
% ylabel('q');
figure(2)
comet3(q(:,1),q(:,2),q(:,2))
title('Lorenz Animation')


