clc;
clear all;

op = odeset('reltol',1e-7,'abstol',1e-9);
figure(1);
axis([-5,5,-5,5])
axis 'manual'
grid
for k=1:200
    x=ginput(1);
    [t,y] = ode45('fduff',[0,1],x',op);
    plot(y(:,1),y(:,2),'HandleVisibility','off');
    hold on
end
hold off