function z=sreso_duff(x)

global alpha

omega=alpha;
c=0.02; a=0.03; F=2;
A=x(1); B=x(2); P=x(3); Q=x(4);
z = [A-F+(3/4*a)*A^3-A*omega^2+(3/4*a)*A*B^2-c*B*omega+(3/2*a)*A*Q^2-(3/4*a)*A^2*P+(3/2*a)*A*P^2+(3/4*a)*B^2*P-(3/2*a)*A*B*Q;
    B+(3/4*a)*B^3-B*omega^2+(3/4*a)*B^2*Q+(3/2*a)*B*Q^2+c*A*omega+(3/4*a)*A^2*B-(3/4*a)*A^2*Q+(3/2*a)*B*P^2+(3/2*a)*A*B*P;
    P-(1/4)*a*A^3+(3/4*a)*P^3-9*P*omega^2-3*c*Q*omega+(3/4*a)*A*B^2+(3/2*a)*A^2*P+(3/2*a)*B^2*P+(3/4*a)*P*Q^2;
    -9*Q*omega^2+(1/4)*a*B^3+(3/4*a)*Q^3+Q+(3/2*a)*B^2*Q+3*c*P*omega+(3/4*a)*P^2*Q-(3/4*a)*A^2*B+(3/2*a)*A^2*Q ];
%z = x^4+y^4+0.1*(x^3+y^3)+2*x^2-x+(y^2/(1+y^2))+0.1*x*y-100;

%
%A=x(1); B=x(2);

%z=-A*omega^2-c*B*omega+A+(3/4)*a*A^3+(3/4)*a*A*B^2-F;
%z=[z;-B*omega^2+c*A*omega+B+(3/4)*a*A^2*B+(3/4)*a*B^3];

