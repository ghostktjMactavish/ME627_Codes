function z=ALE_LS(N)

op=odeset('reltol',1e-8,'abstol',1e-8);
y0=randn(12,1);
A=[y0(4:6),y0(7:9),y0(10:12)];
[q,r]=qr(A);
y0(4:6)=q(:,1);
y0(7:9)=q(:,2);
y0(10:12)=q(:,3);

z=zeros(3,N);
for k=1:N
    [t,y]=ode45('LS2',[0,2*pi],y0,op);
    y0=y(end,:)';
    A=[y0(4:6),y0(7:9),y0(10:12)];
    [q,r]=qr(A);
    y0(4:6)=q(:,1);
    y0(7:9)=q(:,2);
    y0(10:12)=q(:,3);
    z(:,k)=diag(r);
end

