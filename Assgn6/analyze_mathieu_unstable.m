clc;
clear all;
close all;
format long;
E = eye(2);
op =odeset('reltol',1e-12,'abstol',1e-12);
for k=1:2
    [t,x]=ode45('mathieu',[0,2*pi],E(:,k),op);
    E(:,k) = x(end,:)';
end
E
abs(eig(E))
[v,d]=eig(E)
prod(diag(d))

[t,x]=ode45('mathieu',[0,100*pi],v(:,1),op);

figure(1)
plot(t,x)
legend('x1','x2')
xlabel('t')
ylabel('x')

figure(2)
semilogy(t,abs(x))
xlabel('t')
ylabel('log(x)')

x0 = x(end,:)';
x0=x0/norm(x0);
