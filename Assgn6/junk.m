function z = junk(x)
global alpha delta1
op=odeset('reltol',1e-12,'abstol',1e-12);

delta1=x(1);
x0  = x(2);
xd0 = x(3);
[t,y] = ode45('mathieu1',[0,4*pi],[x0;xd0],op);
y = y(end,:)'-[x0;xd0];
z = [y;x0^2+xd0^2-1];

 