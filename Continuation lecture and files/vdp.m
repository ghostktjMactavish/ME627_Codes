function qdot = vdp(t,q)

epsilon=1.1;

qdot = [q(2);-q(1)-q(2)*(q(1)*q(1)-1)*epsilon];

end

