function xdot=mathieu(t,x)

delta=0.22; epsilon=0.2;

xdot = [x(2); -(delta+epsilon*cos(t))*x(1)];