function qdot= entrain(t,x)
global epsilon;
global del;
global F;
qdot = [epsilon*(0.5*x(1)-0.125*x(1)^3+0.5*del*x(2)-0.125*x(1)*x(2)^2-0.5*F);epsilon*(0.5*x(2)-0.125*x(2)^3-0.5*del*x(1)-0.125*(x(1)^2)*x(2))];

end
