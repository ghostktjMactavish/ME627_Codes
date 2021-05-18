clear;
clc;

format long;

options = odeset('AbsTol',1e-13,'RelTol',1e-13);

f = @(t,y) [-sin(y(1))*(1+y(2)),y(1)+y(2)]';
y1 = linspace(-15,15,30);
y2 = linspace(-15,15,30);

[x,y]=meshgrid(y1,y2);
size(x)
size(y)

u = zeros(size(x));
v = zeros(size(x));

% we can use a single loop over each element to compute the derivatives at
% each point (y1, y2)
t=0; % we want the derivatives at each point at t=0, i.e. the starting time
for i = 1:numel(x)
    Yprime = f(t,[x(i); y(i)]);
    u(i) = Yprime(1);
    v(i) = Yprime(2);
end

quiver(x,y,u,v,'r','HandleVisibility','off'); figure(gcf)
xlabel('y_1')
ylabel('y_2')
axis square;

ics1 = [1+1e-5 -1+1e-5; 1+1e-5 -1-1e-5; 1-1e-5 -1-1e-5];
hold on
 for k = 1:3
    [ts,ys] = ode45(f,[0,25],[ics1(k,1);ics1(k,2)],options);
    plot(ys(:,1),ys(:,2),'HandleVisibility','off')
    plot(ys(1,1),ys(1,2),'r*','DisplayName',string(ys(1,1))+', '+string(ys(1,2))) % starting point
    plot(ys(end,1),ys(end,2),'ks','HandleVisibility','off') % ending point
 end
hold on
ics2 = [pi+5e-1 -pi+5e-1; pi+5e-1 -pi-5e-1; pi-9e-1 -pi-9e-1];
 for k = 1:3
    [ts,ys] = ode45(f,[0,2],[ics2(k,1);ics2(k,2)],options);
    plot(ys(:,1),ys(:,2),'HandleVisibility','off')
    plot(ys(1,1),ys(1,2),'g*','DisplayName',string(ys(1,1))+', '+string(ys(1,2))) % starting point
    plot(ys(end,1),ys(end,2),'ks','HandleVisibility','off') % ending point
 end
hold on
ics3 = [-pi+1e-1 pi+1e-1; -pi+5e-1 pi-5e-1; -pi-5e-1 pi-5e-1];
 for k = 1:3
    [ts,ys] = ode45(f,[0,2],[ics3(k,1);ics3(k,2)],options);
    plot(ys(:,1),ys(:,2),'HandleVisibility','off')
    plot(ys(1,1),ys(1,2),'b*','DisplayName',string(ys(1,1))+', '+string(ys(1,2))) % starting point
    plot(ys(end,1),ys(end,2),'ks','HandleVisibility','off') % ending point
 end
legend
hold off
figure
axis([-6,6,-6,6])
hold on 
for k=1:200
    x=ginput(1);
    [t,y]=ode45(f,[0,5],x',options);
    plot(y(:,1),y(:,2),'HandleVisibility','off');
end
hold on 
plot(-pi,pi,'b*','DisplayName','-pi,pi')
plot( pi,-pi,'r*','DisplayName','pi,-pi')
plot(1,-1,'g*','DisplayName','1,-1')
plot(0,0,'y*','DisplayName','0,0')