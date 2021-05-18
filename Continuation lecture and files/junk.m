function z=junk(x)

global alpha

y=alpha;

z = x^4+y^4+0.1*(x^3+y^3)+2*x^2-x+(y^2/(1+y^2))+0.1*x*y-100;

%c=0.4; a=0.5; F=1;

%A=x(1); B=x(2);

%z=-A*omega^2-c*B*omega+A+(3/4)*a*A^3+(3/4)*a*A*B^2-F;
%z=[z;-B*omega^2+c*A*omega+B+(3/4)*a*A^2*B+(3/4)*a*B^3];

