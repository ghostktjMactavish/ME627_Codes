function ydot=duffing2(t,y)
F=1.3;
w=0.6;
c=0.2;

ydot=[y(2); y(1)-y(1)^3-c*y(2)+F*sin(w*t)];

D=[0, 1; 1-3*y(1)^2, -c];
xi1=y(3:4); xi2=y(5:6);
ydot=[ydot;D*xi1;D*xi2];