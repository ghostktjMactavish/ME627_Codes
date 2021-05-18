function ydot=duffing(t,y)

F=1.3; w=0.6; c=0.2;

ydot=[y(2); y(1)-y(1)^3-c*y(2)+F*sin(w*t)];
ydot=[ydot;y(4);y(3)-3*y(1)^2*y(3)-c*y(4)];