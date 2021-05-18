function ydot=duffing(t,y)

F=2.2; w=0.4; c=0.06;

ydot=[y(2); y(1)-y(1)^3-c*y(2)+F*sin(w*t)];
