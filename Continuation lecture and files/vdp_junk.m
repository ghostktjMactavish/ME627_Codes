function z=vdp_junk(x)

global alpha

epsilon=alpha;
A=x(1);B=x(2);C=x(3);P=x(4);Q=x(5);omega=x(6);

z = [ -A*omega^2+A-(1/2)*epsilon*P*B*C*omega+(1/4)*epsilon*B^2*Q*omega+(1/4)*epsilon*A^2*Q*omega-(1/4)*epsilon*C^2*Q*omega;
    (1/2)*epsilon*Q*C*B*omega+(1/2)*epsilon*B^2*A*omega+(1/2)*A*P^2*epsilon*omega-(1/4)*A^2*P*epsilon*omega+(1/4)*B^2*P*epsilon*omega+(1/2)*epsilon*Q^2*A*omega+(1/2)*epsilon*C^2*A*omega-(1/4)*epsilon*C^2*omega*P+(1/4)*epsilon*A^3*omega-A*omega*epsilon;
    -epsilon*Q*B*A*omega+epsilon*A*C*omega*P-4*B*omega^2-epsilon*C*A^2*omega-epsilon*P^2*C*omega-(1/2)*epsilon*B^2*C*omega-epsilon*Q^2*C*omega+B-(1/2)*epsilon*C^3*omega+2*epsilon*C*omega;
    C+epsilon*A*P*B*omega+epsilon*A*C*Q*omega+epsilon*P^2*B*omega+epsilon*A^2*B*omega+(1/2)*epsilon*C^2*B*omega+epsilon*Q^2*B*omega-4*C*omega^2-2*epsilon*B*omega+(1/2)*B^3*epsilon*omega;
    -(3/2*epsilon)*B^2*Q*omega-(3/2*epsilon)*C^2*Q*omega-(3/4*epsilon)*P^2*Q*omega-(3/2*epsilon)*A^2*Q*omega+3*Q*epsilon*omega-(3/4*epsilon)*Q^3*omega-9*omega^2*P-(3/2*epsilon)*A*C*B*omega+P;
    -(1/4)*epsilon*A^3*omega+(3/4*epsilon)*P^3*omega-3*epsilon*omega*P+(3/4*epsilon)*B^2*A*omega+(3/2*(A^2))*P*epsilon*omega+(3/2*(B^2))*P*epsilon*omega-(3/4*epsilon)*C^2*A*omega+(3/2*epsilon)*C^2*omega*P+(3/4*epsilon)*Q^2*omega*P+Q-9*Q*omega^2
];