function z = LLE(N)
op=odeset('reltol',1e-8,'abstol',1e-8);
y0=randn(4,1);
y0(3:4)=y0(3:4)/norm(y0(3:4));

w=0.6;
z=zeros(N,1);
for k=1:N
    [t,y]=ode45('duffing',[0,2*pi/w],y0,op);
    y0=y(end,:)';
    z(k)=norm(y0(3:4));
    y0(3:4)=y0(3:4)/z(k);
end
end