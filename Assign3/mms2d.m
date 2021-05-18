function qdot= mms2d(t,x)
epsilon = 0.001;
p = 3;
qdot = -epsilon*[(sin(t+x)-p*cos(3*t-x))^3];
end