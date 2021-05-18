function E=corrdim(X)

q=X;

[m,n]=size(q);
E=[];

while m>1
    t=q(1,:);
    q=q(2:end,:);
    [m,n]=size(q);
    EE=zeros(m,1);
    for n=1:m
        EE(n)=norm(q(n,:)-t);
    end
    m
    %size(EE)
    E=[E;EE];
end
end
