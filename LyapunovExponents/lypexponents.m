clc;
clear all;
close all;

mu=3.92;
x0=rand;
for k=1:100
    x0 = mu*x0*(1-x0);
end

x1=zeros(1e6,1);
x2=x1;
x=x0+randn*1e-14;
for k=1:1e6
    x=mu*x*(1-x);
    x1(k)=x;
end
x=x0+randn*1e-14;
for k=1:1e6
    x=mu*x*(1-x);
    x2(k)=x;
end
%plot(1:100,x1(1:100),1:100,x2(1:100))

lnlam1=mean(log(abs(mu*(1-2*x1))));
lnlam2=mean(log(abs(mu*(1-2*x2))));
lam =exp(lnlam2);

semilogy(abs(x1(1:50)-x2(1:50)))
hold on
xi = abs(x1(1)-x2(1));
semilogy(1:50,xi*(lam.^[1:50]),'r')