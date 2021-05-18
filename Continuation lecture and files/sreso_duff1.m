function z=sreso_duff1(x)

global alpha

Delta=alpha;
c=2; a=3; F=2;
A=x(1); B=x(2); epsilon=1;
z = [ -3*epsilon*(B^3*a+((A^2+81*F^2*(1/32))*a-4*Delta*(1/3))*B+4*A*c*(1/3))*(1/8);
       (1/8)*(3*(A^3*a+((B^2+81*F^2*(1/32))*a-4*Delta*(1/3))*A-243*F^3*a*(1/512)-4*B*c*(1/3)))*epsilon];
    
%z = x^4+y^4+0.1*(x^3+y^3)+2*x^2-x+(y^2/(1+y^2))+0.1*x*y-100;

%
%A=x(1); B=x(2);

%z=-A*omega^2-c*B*omega+A+(3/4)*a*A^3+(3/4)*a*A*B^2-F;
%z=[z;-B*omega^2+c*A*omega+B+(3/4)*a*A^2*B+(3/4)*a*B^3];

