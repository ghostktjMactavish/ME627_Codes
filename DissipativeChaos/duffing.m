function xdot=duffing(t,y)
F=1.3; w=0.6; c=0.2;
xdot=[y(2);y(1)-y(1)^3-c*y(2)+F*sin(w*t)];
end