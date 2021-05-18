function q = quad_nonlinearity(t,x)
    q1 = x(2);
    q2 = -x(1)-x(1)*x(1);
    q = [q1;q2];
end