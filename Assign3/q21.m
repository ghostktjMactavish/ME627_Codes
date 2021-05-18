clc
clear
global epsilon;
ep = 0.01;
eps = linspace(0.1,1,5);
figure(1);
for ep=eps
    op = odeset('reltol',1e-7,'abstol',1e-9);
    epsilon=ep;
    [t,y] = ode45('avg_sin',[0,100],0.01,op);
    plot(t,y,'DisplayName','eps='+string(ep));
    hold on;
    avg = mean(y.*sin(t+y));
    davg = ep*avg;
    f = @(t,x) [-2*x*cos(x)];
    [t,y] = ode45(f,[0,100],0.01,op);
    plot(t,y,'r-','DisplayName','eps='+string(ep));
end
hold off;
xlabel('t')
ylabel('x')
legend