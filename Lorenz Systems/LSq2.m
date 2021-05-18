clc;
clear all;
close all;

A = 19.2587;%10*(1+rand(1));
save Aused A
q0 = randn(3,1);
N=5000;
X = zeros(3,N);

op=odeset('reltol',1e-8,'abstol',1e-8);

%Eliminating Transients

for k=1:100
    [t,q]=ode45('LS',[0,A],q0,op);
    q0=q(end,:)';
end

for k=1:N
    k
    [t,q]=ode45('LS',[0,A],q0,op);
    q0=q(end,:)';
    X(:,k)=q0;
end
save corrtest X
