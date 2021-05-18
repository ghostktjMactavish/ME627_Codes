function qdot= mms2d_avg(t,X1)
global epsilon;
global p;
%epsilon = 0.001;
%p = 3;
qdot = -1*((1/1680)*(-15792*p^3-5880*p)*sin(X1)*cos(X1)^3+(1/1680)*(7896*p^3+2940*p)*sin(X1)*cos(X1)-5*p^6*(1/48)+303*p^4*(1/560)-3*p^2*(1/80)+5/16)*epsilon^2;
%qdot = -1*epsilon*(sin(t+x)-p*cos(3*t-x))^3;
end