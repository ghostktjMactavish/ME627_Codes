function qdot = avg1(t,x)
    global epsilon;    
    qdot = epsilon*x*sin(t+x);
end