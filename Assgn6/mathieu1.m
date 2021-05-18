function xdot=mathieu1(t,x)
global alpha delta1
delta=delta1; epsilon=alpha;
c=0.05;

xdot = [x(2); -(delta+epsilon*cos(t))*x(1)-c*x(2)];