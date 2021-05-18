function qdot=LS2(t,q)
sigma=10;
beta=1;
rho=28;

x=q(1);
y=q(2);
z=q(3);

xdot=sigma*(y-x);
ydot=x*(rho-z)-y;
zdot=x*y-beta*z;

qdot=[xdot;ydot;zdot];

D = [-sigma, sigma, 0; rho-z,-1,-x;y,x,-beta];
xi1 = q(4:6);
xi2 = q(7:9);
xi3 = q(10:12);

qdot = [qdot;D*xi1;D*xi2;D*xi3];