function xdot = Ftx(t,x)

A = [0,1,sin(t);cos(t),-3,0.2*sin(2*t);0,sin(3*t),-1];
xdot = A*x;
