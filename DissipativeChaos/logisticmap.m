clc;
clear all;
close all;

op=odeset('reltol',1e-8,'abstol',1e-8);

x = zeros(1e6,1);
xx = rand;
mu=3.9;
% for k=1:100
%     xx=mu*xx(1-xx);
% end
for k=1:1e6
    xx = mu*xx*(1-xx);
    x(k)=xx;
end
%hist(x,1000);
y=x;
for k=1:1e6
    xx = mu*xx*(1-xx);
    x(k)=xx;
end
figure(2)
subplot(2,1,1);
hist(x,1000);
subplot(2,1,2);
hist(y,1000);
z=x;
figure(1)
%plot(x(1:end-1),x(2:end),'r.')

mu=linspace(1.5,4,1e8);
x=zeros(1e8,1);
x(1)=rand;
for k=2:1e8
    x(k)=mu(k)*x(k-1)*(1-x(k-1));
end
plot(mu,x,'r.')
xlabel('mu')
ylabel('x')