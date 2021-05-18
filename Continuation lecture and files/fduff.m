function qdot=fduff(t,x)

c=2;F=2;a=3; Delta=40; epsilon=1;
A=q(1); B=q(2);
qdot=[-3*epsilon*(B^3*a+((A^2+81*F^2*(1/32))*a-4*Delta*(1/3))*B+4*A*c*(1/3))*(1/8);
    (1/8)*(3*(A^3*a+((B^2+81*F^2*(1/32))*a-4*Delta*(1/3))*A-243*F^3*a*(1/512)-4*B*c*(1/3)))*epsilon];
