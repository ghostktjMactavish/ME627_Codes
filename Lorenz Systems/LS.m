function qdot=LS(t,q)
sigma=10;
beta=8/3;
rho=28;

x=q(1);
y=q(2);
z=q(3);

xdot=sigma*(y-x);
ydot=x*(rho-z)-y;
zdot=x*y-beta*z;

qdot=[xdot;ydot;zdot];