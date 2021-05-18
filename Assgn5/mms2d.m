function qdot= mms2d(t,x)
global epsilon;
global p;
%epsilon = 0.001;
%p = 3;
qdot = -1*epsilon*(sin(t+x)-p*cos(3*t-x))^3;
end