function qdot = avg_sin(t,x)
    global epsilon;    
    qdot = epsilon*x*sin(t+x);
end