clc
clear all;
close all;
global epsilon;
global p;
%ep = 0.001;
eps = linspace(3,3,1);
iter = linspace(1,1,1);
epsilon = 0.01;
op = odeset('reltol',1e-9,'abstol',1e-11);

for i=iter
    figure(i)
    hold on;
    p=eps(i);
    epsilon = 0.1/(p^3)
    val = epsilon*(p^3)
    [t,y] = ode45('mms2d',[0,1000],0.01,op);
    plot(t,y,'DisplayName','p ='+string(p));
    mean(y)
    %[t,y] = ode45('mms2d_avg',[0,400],0.01,op);
    %plot(t,y,'DisplayName','p_avg ='+string(p),'linewidth',2);
    %hold off;
    title('$\epsilon$ = '+string(epsilon),'interpreter','latex')
    xlabel('t')
    ylabel('x')
    legend
end
