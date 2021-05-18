function z=BLE(N)

op=odeset('reltol',1e-8,'abstol',1e-8);
y0=randn(6,1);
A=[y0(3:4),y0(5:6)];
[q,r]=qr(A);
y0(3:4)=q(:,1);
y0(5:6)=q(:,2);

w=0.6;

z=zeros(2,N);
for k=1:N
    [t,y]=ode45('duffing2',[0,2*pi/w],y0,op);
    y0=y(end,:)';
    A=[y0(3:4),y0(5:6)];
    [q,r]=qr(A);
    y0(3:4)=q(:,1);
    y0(5:6)=q(:,2);
    z(:,k)=diag(r);
end

