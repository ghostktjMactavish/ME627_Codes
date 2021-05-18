clc;
clear;
close all;

global epsilon;
global del;
global F;

del=-2;
F=2.477;
epsilon=0.1;
figure(1)
axis([-10,10,-10,10]);
axis 'manual'

op = odeset('reltol',1e-7,'abstol',1e-9);
for k=1:10    
    grid
    x=ginput(1);
    [t,y]=ode45('entrain',[0,100],x,op);
    
    plot(y(:,1),y(:,2),'HandleVisibility','off');
    hold on;
end
plot(0,0,'k*','linewidth',1);
hold off
xlabel('C');
ylabel('D');
title('delta='+string(del)+' F='+string(F));
axis([-3,3,-3,3])
axis 'equal'

figure(2)
plot()